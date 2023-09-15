import { API_URL } from "../utils/constants";
import { sortingArray } from "../utils/helpers";
import { PAGE_SIZE } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

export const getClients = async ({ sortBy, filter, page }) => {
  let from = 0;
  if (page) {
    from = (page - 1) * PAGE_SIZE;
  }

  let response = await fetch(`${API_URL}/clients/${from}/${PAGE_SIZE}`);
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

  console.log(JSON.stringify(filter));

  //await wait(3000);
  return data;
};
