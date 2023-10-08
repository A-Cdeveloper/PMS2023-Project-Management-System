import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

const headersObj = {
  "Content-Type": "application/json",
  Authorization: "",
};

//////////////////////////////////////////////////////////////////
export const getUsers = async ({ accessToken }) => {
  const response = await fetch(`${API_URL}/users/`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Users list could't be loaded!");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const singleUser = async ({ uid, accessToken }) => {
  const response = await fetch(`${API_URL}/users/user/${uid}`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("User not found");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};
