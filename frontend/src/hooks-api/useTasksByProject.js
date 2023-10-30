import { useQuery } from "@tanstack/react-query";
import { useParams } from "react-router-dom";
import { getTasksByProject as getTasksByProjectApi } from "../services/apiTasks";
import { useAccessToken } from "../context/authContext";

export const useTasksByProject = () => {
  const accessToken = useAccessToken();
  const { projectId: project_id } = useParams();

  const {
    isLoading,
    error,
    data: tasks = [],
  } = useQuery({
    queryKey: ["projects", { project_id: project_id }],
    queryFn: () => getTasksByProjectApi({ project_id, accessToken }),
  });

  return {
    isLoading,
    error,
    tasks,
  };
};
