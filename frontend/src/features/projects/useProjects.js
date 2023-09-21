import { useQuery } from "@tanstack/react-query";
import { getProjects as getProjectsApi } from "../../services/apiProjects";
import { useSearchParams } from "react-router-dom";

export const useProjects = () => {
  const [searchParams] = useSearchParams();

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
    queryFn: () => getProjectsApi({ sortBy }),
  });

  return {
    isLoading,
    error,
    projects,
  };
};
