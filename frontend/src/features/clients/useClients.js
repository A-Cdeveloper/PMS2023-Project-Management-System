import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";

import { getClients as getClientsApi } from "../../services/apiClients";
import { useAccessToken } from "../../context/authContext";

export const useClients = () => {
  const [searchParams] = useSearchParams();
  const accessToken = useAccessToken();

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
    queryFn: () => getClientsApi({ sortBy, accessToken }),
  });

  return {
    isLoading,
    error,
    clients,
  };
};
