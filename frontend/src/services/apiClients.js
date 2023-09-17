import { API_URL } from "../utils/constants";
import { PAGE_SIZE } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

//////////////////////////////////////////////////////////////////
export const getClients = async () => {
  const response = await fetch(`${API_URL}/clients/`);

  if (response.status === 404) {
    throw new Error("Clients list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  const data = await response.json();

  return { data, count: data.length };
};

//////////////////////////////////////////////////////////////////
export const getFilteredClients = async ({ sortBy, page }) => {
  let from = 0;
  let response;
  if (page && sortBy) {
    from = (page - 1) * PAGE_SIZE;
    response = await fetch(
      `${API_URL}/clients/filter/${from}/${PAGE_SIZE}/${sortBy[1]}`
    );
  }

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Clients list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

///////////////////////////////////////////////////////////////////////
export const addNewClient = async (newClient) => {
  const response = await fetch(`${API_URL}/clients/new`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(newClient),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Client can't be added! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};
