import { useProjects } from "../features/projects/useProjects";

export const useClientByProject = ({ project_id }) => {
  if (!project_id) return { clientName: "-", clientId: 4 };
  const { projects: allProjects } = useProjects();
  console.log(project_id);
  const currentProject = allProjects
    ? allProjects.filter((proj) => proj.project_id === project_id)[0]
    : null;

  return currentProject;
};
