import { useMutation, useQueryClient } from "@tanstack/react-query";
import { editTask as editTaskApi } from "../../services/apiTasks";
import { toast } from "react-hot-toast";

const useEditTask = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: editTask } = useMutation({
    mutationFn: editTaskApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["tasks"] });
      toast.success(`Task succesfully updated!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, editTask };
};

export default useEditTask;
