import { useQuery } from "@tanstack/react-query";
import { singleClient as singleClientApi } from "../../services/apiClients";
import { useParams } from "react-router-dom";

export const useClient = () => {
  const { clientId: client_id } = useParams();

  const {
    isLoading,
    error,
    data: client,
  } = useQuery({
    queryKey: ["client", client_id],
    queryFn: () => singleClientApi(client_id),
  });

  return {
    isLoading,
    error,
    client,
  };
};
