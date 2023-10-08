import { useQuery } from "@tanstack/react-query";
import { getUsers as getUsersApi } from "../../services/apiUsers";
import { useAccessToken } from "../../context/authContext";

export const useUsers = () => {
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: users = [],
  } = useQuery({
    queryKey: ["users"],
    queryFn: () => getUsersApi({ accessToken }),
    retry: 1,
  });

  return {
    isLoading,
    error,
    users,
  };
};
