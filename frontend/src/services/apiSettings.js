import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getSettings = async () => {
  const response = await fetch(`${API_URL}/settings/`, {
    headers: {
      "Content-Type": "application/json",
    },
  });

  return await responseApiFn(response, "Settings could't be loaded!");
};

///////////////////////////////////////////////////////////////////////
export const updateSettings = async ({ updatedSettings, accessToken }) => {
  const response = await fetch(`${API_URL}/settings/edit`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ updatedSettings }),
  });

  return await responseApiFn(
    response,
    "Settings could't be edit! Please try again"
  );
};

/////////////////////////////////////////////////////////////////////
export const changeLogo = async ({ formData, accessToken }) => {
  if (!formData) return;

  ////////////  1. upload logo to server ////////////
  const response = await fetch(`${API_URL}/upload`, {
    method: "POST",
    headers: {
      Authorization: `token ${accessToken}`,
    },
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

  return filename;
};

// /////////////////////////////////////////////////////////////////////
export const createBackup = async ({ accessToken }) => {
  const response = await fetch(`${API_URL}/managedb/backup`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Backup not created.Please try again.");
};
