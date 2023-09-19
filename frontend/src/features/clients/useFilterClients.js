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

  return {
    isLoading,
    error,
    clients,
  };
};
