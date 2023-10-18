import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getServices = async ({ sortBy, accessToken }) => {
  const response = await fetch(`${API_URL}/services/${sortBy.join("=")}`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Service list could't be loaded!");
};

//////////////////////////////////////////////////////////////////
export const getFilteredServices = async ({
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
      `${API_URL}/services/filter/${from}/${perPage}/${sortBy.join("=")}`,
      {
        headers: headerApiFn(accessToken),
      }
    );
  }

  return await responseApiFn(response, "Service list could't be loaded!");
};

// ///////////////////////////////////////////////////////////////////////
// export const addNewClient = async ({ newClient, accessToken }) => {
//   const response = await fetch(`${API_URL}/clients/new`, {
//     method: "POST",
//     headers: headerApiFn(accessToken),
//     body: JSON.stringify({ newClient }),
//   });

//   return await responseApiFn(
//     response,
//     "Client can't be added! Please try again"
//   );
// };

// ///////////////////////////////////////////////////////////////////////
// export const cloneClient = async ({ client_id, accessToken }) => {
//   const response = await fetch(`${API_URL}/clients/${client_id}/duplicate`, {
//     method: "POST",
//     headers: headerApiFn(accessToken),
//   });

//   return await responseApiFn(
//     response,
//     "Client can't be duplicated! Please try again"
//   );
// };

// ///////////////////////////////////////////////////////////////////////
// export const deleteClient = async ({ client_id, accessToken }) => {
//   const response = await fetch(`${API_URL}/clients/${client_id}/delete`, {
//     method: "DELETE",
//     headers: headerApiFn(accessToken),
//   });
//   return await responseApiFn(
//     response,
//     "Client can't be deleted! Please try again"
//   );
// };

// ///////////////////////////////////////////////////////////////////////
// export const editClient = async ({ client_id, updatedClient, accessToken }) => {
//   const response = await fetch(`${API_URL}/clients/${client_id}/edit`, {
//     method: "PATCH",
//     headers: headerApiFn(accessToken),
//     body: JSON.stringify({ updatedClient }),
//   });

//   return await responseApiFn(
//     response,
//     "Client can't be edit! Please try again"
//   );
// };

// ///////////////////////////////////////////////////////////////////////
// export const singleClient = async ({ client_id, accessToken }) => {
//   const response = await fetch(`${API_URL}/clients/client/${client_id}`, {
//     headers: headerApiFn(accessToken),
//   });

//   return await responseApiFn(response, "Client not found");
// };
