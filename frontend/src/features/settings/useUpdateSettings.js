import { useMutation, useQueryClient } from "@tanstack/react-query";
import { updateSettings as updateSettingsApi } from "../../services/apiSettings";
import toast from "react-hot-toast";

export const useUpdateSettings = () => {
  const queryClient = useQueryClient();

  const {
    isLoading: isUpdateSettings,
    error: errorUpdateSettings,
    mutate: updateSettings,
  } = useMutation({
    mutationFn: updateSettingsApi,
    onSuccess: () => {
      queryClient.invalidateQueries(["settings"]);
      toast.success("Settings succesfully updated!");
    },
    onError: (error) => toast.error(error.message),
  });

  return {
    isUpdateSettings,
    errorUpdateSettings,
    updateSettings,
  };
};
