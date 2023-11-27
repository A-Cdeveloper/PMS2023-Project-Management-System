import { useQuery } from "@tanstack/react-query";
import { getAllTasks as getAllTasksApi } from "../services/apiTasks";
import { useAccessToken } from "../context/authContext";

export const useAllTasks = () => {
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: tasks = [],
  } = useQuery({
    queryKey: ["all-tasks"],
    queryFn: () => getAllTasksApi({ accessToken }),
  });

  return {
    isLoading,
    error,
    tasks,
  };
};
