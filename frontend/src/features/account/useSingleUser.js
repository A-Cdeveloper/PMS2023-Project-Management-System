import { useQuery } from "@tanstack/react-query";
import { singleUser as singleUserApi } from "../../services/apiUsers";
import { useCurrentUserTokens } from "../../context/authContext";

export const useSingleUser = () => {
  const {
    user: { uid, accessToken },
  } = useCurrentUserTokens();

  const {
    isLoading,
    error,
    data: user,
  } = useQuery({
    queryKey: ["user", uid],
    queryFn: () => singleUserApi({ uid, accessToken }),
  });

  return {
    isLoading,
    error,
    user,
  };
};
