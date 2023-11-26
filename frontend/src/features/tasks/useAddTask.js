import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewTask as addNewTaskApi } from "../../services/apiTasks";
import { toast } from "react-hot-toast";

const useAddTask = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLoading, mutate: addNewTask } = useMutation({
    mutationFn: addNewTaskApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["tasks"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success("Taks succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLoading, addNewTask };
};

export default useAddTask;
