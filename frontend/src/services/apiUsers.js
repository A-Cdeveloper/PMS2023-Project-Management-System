import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getUsers = async ({ accessToken }) => {
  const response = await fetch(`${API_URL}/users/`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Users list could't be loaded!");
};

// ///////////////////////////////////////////////////////////////////////
export const singleUser = async ({ uid, accessToken }) => {
  const response = await fetch(`${API_URL}/users/user/${uid}`, {
    headers: headerApiFn(accessToken),
  });
  return await responseApiFn(response, "User not found");
};

/////////////////////////////////////////////////////////////////////
export const changeUserPassword = async ({
  user_id,
  newPassword,
  accessToken,
}) => {
  const response = await fetch(`${API_URL}/users/change-password/${user_id}`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ newPassword }),
  });

  return await responseApiFn(
    response,
    "User password can't be changed. Please try again"
  );
};

/////////////////////////////////////////////////////////////////////
export const changeProfileImage = async ({ formData, user_id }) => {
  if (!formData) return;

  ////////////  1. upload image to server ////////////
  const response = await fetch(`${API_URL}/upload`, {
    method: "POST",
    //headers: headerApiFn(accessToken),
    body: formData,
  });

  if (response.status === 404) {
    throw new Error("Can't upload image to server.");
  }

  const data = await response.json();

  const { filename } = data;
  if (!filename || response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  ////////////  2. change user_avatar ////////////
  const response2 = await fetch(`${API_URL}/users/change-avatar/${user_id}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
    },
    //headers: headerApiFn(accessToken),
    body: JSON.stringify({ newAvatarPath: `${API_URL}/${filename}` }),
  });

  if (response2.status === 404) {
    throw new Error("Can't change avatar image!");
  }

  const data2 = await response2.json();

  if (response2.status === 400 || response2.status === 401) {
    throw new Error(data.message);
  }

  return data2;
  // return await responseApiFn(response, "Profile image can't be change!");
};
