import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getSettings = async ({ accessToken }) => {
  const response = await fetch(`${API_URL}/settings/`, {
    headers: headerApiFn(accessToken),
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
