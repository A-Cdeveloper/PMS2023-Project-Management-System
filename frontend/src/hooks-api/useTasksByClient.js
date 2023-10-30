import { useQuery } from "@tanstack/react-query";
import { useParams } from "react-router-dom";
import { getTasksByClient as getTasksByClientApi } from "../services/apiTasks";
import { useAccessToken } from "../context/authContext";

export const useTasksByClient = () => {
  const accessToken = useAccessToken();
  const { clientId: client_id } = useParams();

  const {
    isLoading,
    error,
    data: tasks = [],
  } = useQuery({
    queryKey: ["tasks", { client_id: client_id }],
    queryFn: () => getTasksByClientApi({ client_id, accessToken }),
  });

  return {
    isLoading,
    error,
    tasks,
  };
};
