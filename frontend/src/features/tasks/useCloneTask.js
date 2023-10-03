import { useMutation, useQueryClient } from "@tanstack/react-query";
import { cloneTask as cloneTaskApi } from "../../services/apiTasks";
import { toast } from "react-hot-toast";

const useCloneTask = () => {
  const queryClient = useQueryClient();

  const { isLoading: isCloneLoading, mutate: cloneTask } = useMutation({
    mutationFn: cloneTaskApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["tasks"] });
      toast.success(`Task ${data.task.task_name} succesfully duplicated!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isCloneLoading, cloneTask };
};

export default useCloneTask;
