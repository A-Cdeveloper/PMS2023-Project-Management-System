import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getOffers = async ({ sortBy, accessToken }) => {
  const response = await fetch(`${API_URL}/offers/${sortBy.join("=")}`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Offers list could't be loaded!");
};

//////////////////////////////////////////////////////////////////
export const getFilteredOffers = async ({
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
      `${API_URL}/offers/filter/${from}/${perPage}/${sortBy.join("=")}`,
      {
        headers: headerApiFn(accessToken),
      }
    );
  }

  return await responseApiFn(response, "Offer list could't be loaded!");
};

// ///////////////////////////////////////////////////////////////////////
export const addNewOffer = async ({ newOffer, accessToken }) => {
  const response = await fetch(`${API_URL}/offers/new`, {
    method: "POST",
    headers: headerApiFn(accessToken),
    body: JSON.stringify(newOffer),
  });

  return await responseApiFn(
    response,
    "Offer can't be added! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const cloneOffer = async ({ offer_id, accessToken }) => {
  const response = await fetch(`${API_URL}/offers/${offer_id}/duplicate`, {
    method: "POST",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(
    response,
    "Offer can't be duplicated! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const deleteOffer = async ({ offer_id, accessToken }) => {
  const response = await fetch(`${API_URL}/offers/${offer_id}/delete`, {
    method: "DELETE",
    headers: headerApiFn(accessToken),
  });
  return await responseApiFn(
    response,
    "Offer can't be deleted! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const editOffer = async ({ offer_id, updatedOffer, accessToken }) => {
  const response = await fetch(`${API_URL}/offers/${offer_id}/edit`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
    body: JSON.stringify(updatedOffer),
  });

  return await responseApiFn(response, "Offer can't be edit! Please try again");
};

// ///////////////////////////////////////////////////////////////////////
export const singleOffer = async ({ offer_id, accessToken }) => {
  const response = await fetch(`${API_URL}/offers/offer/${offer_id}`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Offer not found");
};
