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
export const addNewService = async ({ newService, accessToken }) => {
  const response = await fetch(`${API_URL}/services/new`, {
    method: "POST",
    headers: headerApiFn(accessToken),
    body: JSON.stringify(newService),
  });

  return await responseApiFn(
    response,
    "Service can't be added! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const cloneService = async ({ service_id, accessToken }) => {
  const response = await fetch(`${API_URL}/services/${service_id}/duplicate`, {
    method: "POST",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(
    response,
    "Service can't be duplicated! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const deleteService = async ({ service_id, accessToken }) => {
  const response = await fetch(`${API_URL}/services/${service_id}/delete`, {
    method: "DELETE",
    headers: headerApiFn(accessToken),
  });
  return await responseApiFn(
    response,
    "Service can't be deleted! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const editService = async ({
  service_id,
  updatedService,
  accessToken,
}) => {
  const response = await fetch(`${API_URL}/services/${service_id}/edit`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
    body: JSON.stringify(updatedService),
  });

  return await responseApiFn(
    response,
    "Service can't be edit! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
// export const singleClient = async ({ client_id, accessToken }) => {
//   const response = await fetch(`${API_URL}/clients/client/${client_id}`, {
//     headers: headerApiFn(accessToken),
//   });

//   return await responseApiFn(response, "Client not found");
// };
