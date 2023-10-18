import { useMutation, useQueryClient } from "@tanstack/react-query";
import { editService as editServiceApi } from "../../services/apiServices";
import { toast } from "react-hot-toast";

const useEditService = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: editService } = useMutation({
    mutationFn: editServiceApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["services"] });

      toast.success(`Service succesfully edited!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, editService };
};

export default useEditService;
