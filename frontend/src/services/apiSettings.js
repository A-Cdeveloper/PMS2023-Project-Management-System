import { API_URL } from "../utils/constants";

//////////////////////////////////////////////////////////////////
export const getSettings = async () => {
  const response = await fetch(`${API_URL}/settings/`);
  if (response.status === 404) {
    throw new Error("Settings could't be loaded!");
  }
  if (response.status === 400) {
    throw new Error(data.message);
  }
  const data = await response.json();
  return data;
};

///////////////////////////////////////////////////////////////////////
export const updateSettings = async (updatedSettings) => {
  const response = await fetch(`${API_URL}/settings/edit`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(updatedSettings),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Settings could't be edit! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};
