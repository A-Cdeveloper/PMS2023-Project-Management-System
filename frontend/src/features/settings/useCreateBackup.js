import { useMutation, useQueryClient } from "@tanstack/react-query";
import { createBackup as createBackupsApi } from "../../services/apiSettings";
import toast from "react-hot-toast";

export const useCreateBackup = () => {
  const queryClient = useQueryClient();

  const {
    isLoading: isCreateBackup,
    error: errorCreateBackup,
    mutate: createBackup,
  } = useMutation({
    mutationFn: createBackupsApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries(["settings"]);
      toast.success(data.message);
    },
    onError: (error) => toast.error(error.message),
  });

  return {
    isCreateBackup,
    errorCreateBackup,
    createBackup,
  };
};
