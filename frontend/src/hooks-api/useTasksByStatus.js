import { useQuery } from "@tanstack/react-query";
import { getTasksByStatus as getTasksByStatusApi } from "../services/apiTasks";
import { useAccessToken } from "../context/authContext";

export const useTasksByStatus = (taskStatus) => {
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: tasks = [],
  } = useQuery({
    queryKey: ["tasks", { taskStatus }],
    queryFn: () => getTasksByStatusApi({ taskStatus, accessToken }),
  });

  return {
    isLoading,
    error,
    tasks,
  };
};
