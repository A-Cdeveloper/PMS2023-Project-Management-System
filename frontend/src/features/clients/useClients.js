import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getClients as getClientsApi } from "../../services/apiClients";

export const useClients = () => {
  const [searchParams] = useSearchParams();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["client_name", "asc"];

  // // FILTER - server
  // const filteredValue = searchParams.get("client_name");
  // const filter =
  //   !filteredValue || filteredValue === "all"
  //     ? null
  //     : searchParams.get("client_name");

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: clients = {},
  } = useQuery({
    queryKey: ["clients", sortBy, page],
    queryFn: () => getClientsApi({ sortBy, page }),
  });

  // console.log(clients);

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

  const count = filteredClients.length;

  // console.log(filteredClients);

  return {
    isLoading,
    error,
    clients: filteredClients,
    count,
  };
};
