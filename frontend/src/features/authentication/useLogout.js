import { useMutation } from "@tanstack/react-query";
import { logout as logoutApi } from "../../services/apiAuth";
import { toast } from "react-hot-toast";
import { useNavigate } from "react-router-dom";

export const useLogout = () => {
  const navigate = useNavigate();

  const { isLoading, mutate: logout } = useMutation({
    mutationFn: logoutApi,
    onSuccess: () => {
      toast.success(`You are succesfully loged out!`);
      navigate("/login", { replace: true });
      localStorage.removeItem("currentUser");
    },

    onSettled: () => {},
    onError: (err) => toast.error(err.message),
  });

  return { isLoading, logout };
};
