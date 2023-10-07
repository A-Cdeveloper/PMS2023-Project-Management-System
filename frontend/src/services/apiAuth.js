import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

///////////////////////////////////////////////////////////////////////
export const login = async ({ username, password }) => {
  const response = await fetch(`${API_URL}/users/login`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ username, password }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Login failed! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  await wait(5000);
  return data;
};
