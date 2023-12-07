import { useMutation, useQueryClient } from "@tanstack/react-query";
import { resetAll as resetAllApi } from "../../services/apiSettings";
import toast from "react-hot-toast";

import { useLogout } from "../authentication/useLogout";
import { useCurrentUserTokens } from "../../context/authContext";

export const useResetAll = () => {
  const queryClient = useQueryClient();
  const { logout } = useLogout();
  const {
    user: { refreshToken },
  } = useCurrentUserTokens();

  const {
    isLoading: isResetAll,
    error: errorResetAll,
    mutate: resetAll,
    isSuccess,
  } = useMutation({
    mutationFn: resetAllApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries(["settings"]);
      toast.success(data.message);
      logout({ refreshToken: refreshToken });
    },
    onError: (error) => toast.error(error.message),
  });

  return {
    isResetAll,
    errorResetAll,
    resetAll,
    isSuccess,
  };
};
