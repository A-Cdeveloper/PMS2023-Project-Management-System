import { useQuery } from "@tanstack/react-query";
import { singleUser as singleUserApi } from "../../services/apiUsers";
import { useParams } from "react-router-dom";

export const useUser = () => {
  const { userId: uid } = useParams();

  const {
    isLoading,
    error,
    data: user,
  } = useQuery({
    queryKey: ["user", +uid],
    queryFn: () => singleUserApi(uid),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    user,
  };
};
