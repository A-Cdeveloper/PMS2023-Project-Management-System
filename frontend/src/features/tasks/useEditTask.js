import { useMutation, useQueryClient } from "@tanstack/react-query";
import { editTask as editTaskApi } from "../../services/apiTasks";
import { toast } from "react-hot-toast";

const useEditTask = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: editTask } = useMutation({
    mutationFn: ({ taskId, updatedTask }) => editTaskApi(taskId, updatedTask),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["tasks"] });
      toast.success(`Task ${data.task.task_name} succesfully updated!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, editTask };
};

export default useEditTask;
