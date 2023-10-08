import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

const headersObj = {
  "Content-Type": "application/json",
  Authorization: "",
};

//////////////////////////////////////////////////////////////////
export const getClients = async ({ sortBy, accessToken }) => {
  const response = await fetch(`${API_URL}/clients/${sortBy.join("=")}`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });

  if (response.status === 404) {
    throw new Error("Clients list could't be loaded!");
  }

  const data = await response.json();

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

//////////////////////////////////////////////////////////////////
export const getFilteredClients = async ({
  sortBy,
  page,
  perPage,
  accessToken,
}) => {
  let from = 0;
  let response;
  if (page && sortBy) {
    from = (page - 1) * perPage;
    response = await fetch(
      `${API_URL}/clients/filter/${from}/${perPage}/${sortBy.join("=")}`,
      {
        headers: {
          ...headersObj,
          Authorization: `token ${accessToken}`,
        },
      }
    );
  }

  if (response.status === 404) {
    throw new Error("Clients list could't be loaded!");
  }
  const data = await response.json();

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

///////////////////////////////////////////////////////////////////////
export const addNewClient = async ({ newClient, accessToken }) => {
  const response = await fetch(`${API_URL}/clients/new`, {
    method: "POST",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ newClient }),
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

///////////////////////////////////////////////////////////////////////
export const cloneClient = async ({ client_id, accessToken }) => {
  const response = await fetch(`${API_URL}/clients/${client_id}/duplicate`, {
    method: "POST",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Client can't be duplicated! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const deleteClient = async ({ client_id, accessToken }) => {
  const response = await fetch(`${API_URL}/clients/${client_id}/delete`, {
    method: "DELETE",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Client can't be deleted! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const editClient = async ({ client_id, updatedClient, accessToken }) => {
  const response = await fetch(`${API_URL}/clients/${client_id}/edit`, {
    method: "PATCH",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ updatedClient }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Client can't be edit! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const singleClient = async ({ client_id, accessToken }) => {
  const response = await fetch(`${API_URL}/clients/client/${client_id}`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Client not found");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};
