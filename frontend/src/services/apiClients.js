import { API_URL } from "../utils/constants";
import { sortingArray } from "../utils/helpers";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

export const getClients = async ({ sortBy }) => {
  const response = await fetch(`${API_URL}/clients/`);
  const data = await response.json();

  if (sortBy) {
    return sortingArray(data, sortBy[0], sortBy[1]);
  }

  if (response.status === 404) {
    throw new Error("Clients list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};
