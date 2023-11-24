import { useQuery } from "@tanstack/react-query";
import { getTasksByStatus as getTasksByStatusApi } from "../services/apiTasks";
import { useAccessToken } from "../context/authContext";

export const useTasksByStatus = () => {
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: tasks = [],
  } = useQuery({
    queryKey: ["tasks", { status: taskStatus }],
    queryFn: () => getTasksByStatusApi({ status: taskStatus, accessToken }),
  });

  return {
    isLoading,
    error,
    tasks,
  };
};
