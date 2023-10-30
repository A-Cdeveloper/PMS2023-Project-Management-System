import { useQuery } from "@tanstack/react-query";
import { useParams } from "react-router-dom";
import { getProjectsByClient as getProjectsByClientApi } from "../services/apiProjects";
import { useAccessToken } from "../context/authContext";

export const useProjectsByClient = () => {
  const accessToken = useAccessToken();
  const { clientId: client_id } = useParams();

  const {
    isLoading,
    error,
    data: projects = [],
  } = useQuery({
    queryKey: ["projects", { client_id: client_id }],
    queryFn: () => getProjectsByClientApi({ client_id, accessToken }),
  });

  return {
    isLoading,
    error,
    projects,
  };
};
