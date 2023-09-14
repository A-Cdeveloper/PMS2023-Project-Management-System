import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getClients as getClientsApi } from "../../services/apiClients";

export const useClients = () => {
  const [searchParams] = useSearchParams();

  // SORTING
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["client_name", "asc"];

  const {
    isLoading,
    error,
    data: clients = {},
  } = useQuery({
    queryKey: ["clients", sortBy],
    queryFn: () => getClientsApi({ sortBy }),
  });

  const count = clients.length;

  return {
    isLoading,
    error,
    clients,
    count,
  };
};
