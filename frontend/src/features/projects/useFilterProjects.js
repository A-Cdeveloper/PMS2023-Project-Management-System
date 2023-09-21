import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredProjects as getFilteredProjectsApi } from "../../services/apiProjects";
import { useSettings } from "../settings/useSettings";
import { useProjects } from "./useProjects";

export const useFilterProjects = () => {
  const [searchParams] = useSearchParams();
  const { settings = {} } = useSettings();
  const { projects: allProjects } = useProjects();
  const { projects_per_page } = settings;
  const queryClient = useQueryClient();
  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["project_name", "asc"];

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: projects = {},
  } = useQuery({
    queryKey: ["projects", sortBy, page],
    queryFn: () =>
      getFilteredProjectsApi({ sortBy, page, perPage: projects_per_page }),
    enabled: !!projects_per_page,
  });

  if (page < Math.ceil(allProjects.length / projects_per_page)) {
    queryClient.prefetchQuery({
      queryKey: ["projects", sortBy, page + 1],
      queryFn: () =>
        getFilteredProjectsApi({
          sortBy,
          page: page + 1,
          perPage: projects_per_page,
        }),
    });
  }

  return {
    isLoading,
    error,
    projects,
  };
};
