import { useMutation } from "@tanstack/react-query";
import { login as loginApi } from "../../services/apiAuth";
import { useNavigate } from "react-router-dom";
import { toast } from "react-hot-toast";

const useLogin = () => {
  const navigate = useNavigate();
  const { isLoading: isLoginLoading, mutate: login } = useMutation({
    mutationFn: loginApi,
    onSuccess: (data) => {
      // console.log(data);
      localStorage.setItem("currentUser", JSON.stringify(data.user));
      toast.success(data.message);
    },
    onSettled: () => {
      navigate("/", { replace: true });
    },
    onError: (err) => toast.error(err.message),
  });

  return { isLoginLoading, login };
};

export default useLogin;
