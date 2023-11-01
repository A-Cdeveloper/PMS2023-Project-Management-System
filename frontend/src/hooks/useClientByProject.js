import { useProjects } from "../features/projects/useProjects";

export const useClientByProject = ({ project_id }) => {
  if (!project_id) return { clientName: "-", clientId: 4 };
  const { projects } = useProjects();
  const { client_name: clientName, project_client_id: clientId } =
    projects.filter((proj) => proj.project_id === project_id)[0];
  return { clientName, clientId };
};
