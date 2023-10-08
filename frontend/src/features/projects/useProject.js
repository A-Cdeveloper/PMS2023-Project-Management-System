import { useQuery } from "@tanstack/react-query";
import { singleProject as singleProjectApi } from "../../services/apiProjects";
import { useParams } from "react-router-dom";
import { useAccessToken } from "../../context/authContext";

export const useProject = () => {
  const { projectId: project_id } = useParams();
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: project,
  } = useQuery({
    queryKey: ["project", +project_id],
    queryFn: () => singleProjectApi({ project_id, accessToken }),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    project,
  };
};
