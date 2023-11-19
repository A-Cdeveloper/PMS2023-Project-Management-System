import { useProjects } from "../features/projects/useProjects";

export const useProjectsDropDown = () => {
  const { projects } = useProjects();

  const projectsList = projects.map((project) => {
    return {
      value: project.project_id,
      label: project.project_name,
    };
  });

  return { fullProjectsList: [{ value: "", label: "" }, ...projectsList] };
};
