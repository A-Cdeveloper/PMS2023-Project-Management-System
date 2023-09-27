import { useQuery } from "@tanstack/react-query";
import { singleProject as singleProjectApi } from "../../services/apiProjects";
import { useParams } from "react-router-dom";

export const useProject = () => {
  const { projectId: project_id } = useParams();

  const {
    isLoading,
    error,
    data: project,
  } = useQuery({
    queryKey: ["project", +project_id],
    queryFn: () => singleProjectApi(project_id),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    project,
  };
};
