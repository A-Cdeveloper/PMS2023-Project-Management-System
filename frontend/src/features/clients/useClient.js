import { useQuery } from "@tanstack/react-query";
import { singleClient as singleClientApi } from "../../services/apiClients";
import { useParams } from "react-router-dom";
import { useAccessToken } from "../../context/authContext";

export const useClient = () => {
  const { clientId: client_id } = useParams();
  const accessToken = useAccessToken();
  const {
    isLoading,
    error,
    data: client,
  } = useQuery({
    queryKey: ["client", client_id],
    queryFn: () => singleClientApi({ client_id, accessToken }),
  });

  return {
    isLoading,
    error,
    client,
  };
};
