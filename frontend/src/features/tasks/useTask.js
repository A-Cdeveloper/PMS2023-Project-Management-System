import { useQuery } from "@tanstack/react-query";
import { singleTask as singleTaskApi } from "../../services/apiTasks";
import { useParams } from "react-router-dom";
import { useAccessToken } from "../../context/authContext";

export const useTask = () => {
  const { taskId: task_id } = useParams();
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: task,
  } = useQuery({
    queryKey: ["task", +task_id],
    queryFn: () => singleTaskApi({ task_id, accessToken }),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    task,
  };
};
