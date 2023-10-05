import { useProjects } from "../projects/useProjects";

export const taskAllProjects = () => {
  const { projects } = useProjects();

  const projectsList = projects.map((project) => {
    return { value: project.project_id, label: project.project_name };
  });

  return [{ value: "", label: "" }, ...projectsList];
};

export const taskCols = [
  "Task",
  "Project/Client",
  "Add Date",
  "Start Date",
  "End Date",
  "Used time",
  "Status",
];

export const taskStatus = [
  { value: "all", label: "All" },
  { value: "open", label: "open" },
  { value: "working", label: "working" },
  { value: "closed", label: "closed" },
  { value: "invoiced", label: "invoiced" },
];
