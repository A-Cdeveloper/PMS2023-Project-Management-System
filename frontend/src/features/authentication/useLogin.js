import { useMutation } from "@tanstack/react-query";
import { login as loginApi } from "../../services/apiAuth";
import { toast } from "react-hot-toast";
import { useCurrentUser } from "../../context/authContext";

const useLogin = () => {
  const { setLocalStorageHandler } = useCurrentUser();

  const { isLoading: isLoginLoading, mutate: login } = useMutation({
    mutationFn: loginApi,
    onSuccess: (data) => {
      setLocalStorageHandler("currentUser", JSON.stringify(data.user));
      toast.success(data.message);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isLoginLoading, login };
};

export default useLogin;
