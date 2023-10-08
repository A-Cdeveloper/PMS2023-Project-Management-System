import { useQuery } from "@tanstack/react-query";
import { singleUser as singleUserApi } from "../../services/apiUsers";
import { useParams } from "react-router-dom";
import { useAccessToken } from "../../context/authContext";

export const useUser = () => {
  const { userId: uid } = useParams();
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: user,
  } = useQuery({
    queryKey: ["user", +uid],
    queryFn: () => singleUserApi({ uid, accessToken }),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    user,
  };
};
