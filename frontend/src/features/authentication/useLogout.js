import { useMutation, useQueryClient } from "@tanstack/react-query";
import { logout as logoutApi } from "../../services/apiAuth";
import { toast } from "react-hot-toast";
import { useNavigate } from "react-router-dom";

export const useLogout = () => {
  const navigate = useNavigate();
  const queryClient = useQueryClient();

  const { isLoading, mutate: logout } = useMutation({
    mutationFn: logoutApi,
    onSuccess: (data) => {
      toast.success(data.message);
      navigate("/login", { replace: true });
      localStorage.removeItem("currentUser");
    },

    onSettled: () => {
      queryClient.removeQueries({ queryKey: ["user"], exact: true });
    },
    onError: (err) => toast.error(err.message),
  });

  return { isLoading, logout };
};
