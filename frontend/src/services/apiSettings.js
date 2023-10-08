import { API_URL } from "../utils/constants";

const headersObj = {
  "Content-Type": "application/json",
  Authorization: "",
};

//////////////////////////////////////////////////////////////////
export const getSettings = async ({ accessToken }) => {
  const response = await fetch(`${API_URL}/settings/`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  if (response.status === 404) {
    throw new Error("Settings could't be loaded!");
  }
  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }
  const data = await response.json();
  return data;
};

///////////////////////////////////////////////////////////////////////
export const updateSettings = async ({ updatedSettings, accessToken }) => {
  const response = await fetch(`${API_URL}/settings/edit`, {
    method: "PATCH",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ updatedSettings }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Settings could't be edit! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};
