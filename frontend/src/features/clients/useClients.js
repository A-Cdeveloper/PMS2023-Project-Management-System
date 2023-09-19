import { useQuery } from "@tanstack/react-query";
import { getClients as getClientsApi } from "../../services/apiClients";
import { useSearchParams } from "react-router-dom";

export const useClients = () => {
  const [searchParams] = useSearchParams();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["client_name", "asc"];

  const {
    isLoading,
    error,
    data: clients = [],
  } = useQuery({
    queryKey: ["clients", sortBy],
    queryFn: () => getClientsApi({ sortBy }),
  });

  return {
    isLoading,
    error,
    clients,
  };
};
