import { useMutation, useQueryClient } from "@tanstack/react-query";
import { deleteTask as deleteTaskApi } from "../../services/apiTasks";
import { toast } from "react-hot-toast";

const useDeleteTask = () => {
  const queryClient = useQueryClient();

  const { isLoading: isDeleteLoading, mutate: deleteTask } = useMutation({
    mutationFn: deleteTaskApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["tasks"] });
      toast.success(`Task ${data.task.task_name} succesfully deleted!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isDeleteLoading, deleteTask };
};

export default useDeleteTask;
