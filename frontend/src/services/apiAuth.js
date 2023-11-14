import { API_URL } from "../utils/constants";
import { responseApiFn, headerApiFn } from "../utils/helpers";

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

  return await responseApiFn(response, "Login failed! Please try again");
};

///////////////////////////////////////////////////////////////////
export const logout = async ({ refreshToken }) => {
  const response = await fetch(`${API_URL}/users/logout`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ refreshToken }),
  });

  return await responseApiFn(response, "Failed! Please try again");
};

///////////////////////////////////////////////////////////////////
export const userConformation = async ({
  userId: user_id,
  verifikationToken,
}) => {
  const response = await fetch(
    `${API_URL}/users/user-verify/${user_id}/${verifikationToken}`
  );

  return await responseApiFn(response, "Failed! Please try again");
};

///////////////////////////////////////////////////////////////////
export const forgotPassword = async ({ entry }) => {
  const response = await fetch(`${API_URL}/users/forgot-password/`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ entry }),
  });

  return await responseApiFn(response, "Failed! Please try again");
};

///////////////////////////////////////////////////////////////////////
export const refreshToken = async ({ refreshToken, accessToken }) => {
  const response = await fetch(`${API_URL}/users/refresh_token`, {
    method: "POST",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ refreshToken }),
  });

  return await responseApiFn(
    response,
    "Refresh session failed! Please try again"
  );
};
