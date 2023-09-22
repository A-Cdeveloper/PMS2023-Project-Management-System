import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

//////////////////////////////////////////////////////////////////
export const getProjects = async ({ sortBy }) => {
  const response = await fetch(`${API_URL}/projects/${sortBy.join("=")}`);

  if (response.status === 404) {
    throw new Error("Projects list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  const data = await response.json();

  return data;
};

// //////////////////////////////////////////////////////////////////
export const getFilteredProjects = async ({ sortBy, page, perPage }) => {
  let from = 0;
  let response;
  if (page && sortBy) {
    from = (page - 1) * perPage;
    response = await fetch(
      `${API_URL}/projects/filter/${from}/${perPage}/${sortBy.join("=")}`
    );
  }

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Projects list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
// export const addNewClient = async (newClient) => {
//   const response = await fetch(`${API_URL}/clients/new`, {
//     method: "POST",
//     headers: {
//       "Content-Type": "application/json",
//     },
//     body: JSON.stringify(newClient),
//   });

//   const data = await response.json();

//   if (response.status === 404) {
//     throw new Error("Client can't be added! Please try again");
//   }

//   if (response.status === 400) {
//     throw new Error(data.message);
//   }

//   return data;
// };

// ///////////////////////////////////////////////////////////////////////
// export const cloneClient = async (clientId) => {
//   const response = await fetch(`${API_URL}/clients/${clientId}/duplicate`, {
//     method: "POST",
//   });
//   const data = await response.json();

//   if (response.status === 404) {
//     throw new Error("Client can't be duplicated! Please try again");
//   }

//   if (response.status === 400) {
//     throw new Error(data.message);
//   }

//   return data;
// };

// ///////////////////////////////////////////////////////////////////////
// export const deleteClient = async (clientId) => {
//   const response = await fetch(`${API_URL}/clients/${clientId}/delete`, {
//     method: "DELETE",
//   });
//   const data = await response.json();

//   if (response.status === 404) {
//     throw new Error("Client can't be deleted! Please try again");
//   }

//   if (response.status === 400) {
//     throw new Error(data.message);
//   }

//   return data;
// };

// ///////////////////////////////////////////////////////////////////////
// export const editClient = async (clientId, updatedClient) => {
//   const response = await fetch(`${API_URL}/clients/${clientId}/edit`, {
//     method: "PATCH",
//     headers: {
//       "Content-Type": "application/json",
//     },
//     body: JSON.stringify(updatedClient),
//   });

//   const data = await response.json();

//   if (response.status === 404) {
//     throw new Error("Client can't be edit! Please try again");
//   }

//   if (response.status === 400) {
//     throw new Error(data.message);
//   }

//   return data;
// };

// ///////////////////////////////////////////////////////////////////////
// export const singleClient = async (client_id) => {
//   const response = await fetch(`${API_URL}/clients/client/${client_id}`);

//   const data = await response.json();

//   if (response.status === 404) {
//     throw new Error("Client not found");
//   }

//   if (response.status === 400) {
//     throw new Error(data.message);
//   }

//   return data;
// };
