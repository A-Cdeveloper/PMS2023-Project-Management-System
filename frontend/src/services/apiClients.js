import { API_URL } from "../utils/constants";

export const getClients = async () => {
  const response = await fetch(`${API_URL}/clients/`);
  const data = await response.json();

  if (response.status === 404) {
    console.log(data.error.message);
    throw new Error("Clients list can't be loaded!");
  }

  return data;
};
