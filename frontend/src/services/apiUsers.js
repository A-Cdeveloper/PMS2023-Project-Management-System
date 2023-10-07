import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

//////////////////////////////////////////////////////////////////
export const getUsers = async () => {
  const response = await fetch(`${API_URL}/users/`);
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Users list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const singleUser = async (uid) => {
  const response = await fetch(`${API_URL}/users/user/${uid}`);

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("User not found");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};
