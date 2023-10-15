import { useParams } from "react-router-dom";
import { useQuery } from "@tanstack/react-query";
import { userConformation as userConformationApi } from "../../services/apiAuth";

export const useConformUser = () => {
  const { userId, verifikationToken } = useParams();

  const { isLoading, error, data } = useQuery({
    queryFn: () => userConformationApi({ userId, verifikationToken }),
    queryKey: ["user", userId],
    retry: 1,
  });

  return {
    isLoading,
    error,
    data,
  };
};
