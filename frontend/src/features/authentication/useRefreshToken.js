import { useMutation } from "@tanstack/react-query";
import { refreshToken as refreshTokenApi } from "../../services/apiAuth";
import { toast } from "react-hot-toast";
import { useCurrentUserTokens } from "../../context/authContext";

const useRefreshToken = () => {
  const { setSessionStorageHandler } = useCurrentUserTokens();

  const { isLoading: isRefetchLoading, mutate: refreshToken } = useMutation({
    mutationFn: refreshTokenApi,
    onSuccess: (data) => {
      const { uid, role, accessToken, refreshToken, expiresIn } = data.user;
      setSessionStorageHandler(
        "currentUser",
        JSON.stringify({ uid, accessToken, refreshToken, expiresIn, role })
      );
      toast.success(data.message);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isRefetchLoading, refreshToken };
};

export default useRefreshToken;
