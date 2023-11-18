import { useMutation } from "@tanstack/react-query";
import { login as loginApi } from "../../services/apiAuth";
import { toast } from "react-hot-toast";
import { useCurrentUserTokens } from "../../context/authContext";

const useLogin = () => {
  const { setSessionStorageHandler } = useCurrentUserTokens();

  const { isLoading: isLoginLoading, mutate: login } = useMutation({
    mutationFn: loginApi,
    onSuccess: (data) => {
      const { uid, role, accessToken, refreshToken, expiresIn } = data.user;
      setSessionStorageHandler(
        "currentUser",
        JSON.stringify({ uid, accessToken, refreshToken, expiresIn, role })
      );
      toast.success(data.message);
    },
    onError: (err) => {
      toast.error(err.message || "Server connection problem");
    },
  });

  return { isLoginLoading, login };
};

export default useLogin;
