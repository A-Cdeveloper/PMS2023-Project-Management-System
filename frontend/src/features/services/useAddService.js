import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewService as addNewServiceApi } from "../../services/apiServices";
import { toast } from "react-hot-toast";

const useAddService = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLoading, mutate: addNewService } = useMutation({
    mutationFn: addNewServiceApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["services"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success("Service succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLoading, addNewService };
};

export default useAddService;
