import { useQuery } from "@tanstack/react-query";
import { getClients as getClientsApi } from "../../services/apiClients";

export const useClients = () => {
  const {
    isLoading,
    error,
    data: clients = {},
  } = useQuery({
    queryKey: ["clients"],
    queryFn: getClientsApi,
  });

  const count = clients.length;

  return {
    isLoading,
    error,
    clients,
    count,
  };
};
