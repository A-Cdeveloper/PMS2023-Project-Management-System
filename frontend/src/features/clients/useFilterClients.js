import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredClients as getFilteredClientsApi } from "../../services/apiClients";

export const useFilterClients = () => {
  const [searchParams] = useSearchParams();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["client_name", "asc"];

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: clients = {},
  } = useQuery({
    queryKey: ["clients", sortBy, page],
    queryFn: () => getFilteredClientsApi({ sortBy, page }),
  });

  // FILTER TEXT INPUT - client
  const filteredTextValue = searchParams.get("filterByText");

  const filteredClients =
    filteredTextValue && clients
      ? clients.filter((client) => {
          return (
            client.client_name
              .trim()
              .toLowerCase()
              .includes(filteredTextValue) ||
            client.client_adresse
              .trim()
              .toLowerCase()
              .includes(filteredTextValue) ||
            client.client_contact
              .trim()
              .toLowerCase()
              .includes(filteredTextValue)
          );
        })
      : clients;

  // console.log(filteredClients);

  return {
    isLoading,
    error,
    clients: filteredClients,
  };
};
