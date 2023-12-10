import { useMutation, useQueryClient } from "@tanstack/react-query";
import { restore as restoreApi } from "../../services/apiSettings";
import toast from "react-hot-toast";

export const useRestore = () => {
  const queryClient = useQueryClient();

  const {
    isLoading: isRestore,
    error: errorRestore,
    mutate: restore,
  } = useMutation({
    mutationFn: restoreApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries(["settings"]);
      toast.success(data.message);
    },
    onError: (error) => toast.error(error.message),
  });

  return {
    isRestore,
    errorRestore,
    restore,
  };
};
