import { useQuery } from "@tanstack/react-query";
import { singleTask as singleTaskApi } from "../../services/apiTasks";
import { useParams } from "react-router-dom";

export const useTask = () => {
  const { taskId: task_id } = useParams();

  const {
    isLoading,
    error,
    data: task,
  } = useQuery({
    queryKey: ["task", +task_id],
    queryFn: () => singleTaskApi(task_id),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    task,
  };
};
