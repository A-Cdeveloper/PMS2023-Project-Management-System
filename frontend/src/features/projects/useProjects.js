import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getProjects as getProjectsApi } from "../../services/apiProjects";
import { useAccessToken } from "../../context/authContext";

export const useProjects = () => {
  const [searchParams] = useSearchParams();
  const accessToken = useAccessToken();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["project_name", "asc"];

  const {
    isLoading,
    error,
    data: projects = [],
  } = useQuery({
    queryKey: ["projects", sortBy],
    queryFn: () => getProjectsApi({ sortBy, accessToken }),
  });

  return {
    isLoading,
    error,
    projects,
  };
};
