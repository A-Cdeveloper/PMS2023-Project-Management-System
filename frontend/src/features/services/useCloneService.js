import { useMutation, useQueryClient } from "@tanstack/react-query";
import { cloneService as cloneServiceApi } from "../../services/apiServices";
import { toast } from "react-hot-toast";

const useCloneService = () => {
  const queryClient = useQueryClient();

  const { isLoading: isCloneLoading, mutate: cloneService } = useMutation({
    mutationFn: cloneServiceApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["services"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(
        `Service ${data.service.service_name} succesfully duplicated!`
      );
    },
    onError: (err) => toast.error(err.message),
  });

  return { isCloneLoading, cloneService };
};

export default useCloneService;
