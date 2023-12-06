import { useMutation, useQueryClient } from "@tanstack/react-query";
import { resetAll as resetAllApi } from "../../services/apiSettings";
import toast from "react-hot-toast";

export const useResetAll = () => {
  const queryClient = useQueryClient();

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
