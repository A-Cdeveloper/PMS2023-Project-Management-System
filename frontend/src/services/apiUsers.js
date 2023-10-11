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
