import { useMutation, useQueryClient } from "@tanstack/react-query";
import { deleteService as deleteServiceApi } from "../../services/apiServices";
import { toast } from "react-hot-toast";

const useDeleteService = () => {
  const queryClient = useQueryClient();

  const { isLoading: isDeleteLoading, mutate: deleteService } = useMutation({
    mutationFn: deleteServiceApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["services"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(
        `Service ${data.service.service_name} succesfully deleted!`
      );
    },
    onError: (err) => toast.error(err.message),
  });

  return { isDeleteLoading, deleteService };
};

export default useDeleteService;
