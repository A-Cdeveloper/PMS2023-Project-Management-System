import { useProjects } from "../features/projects/useProjects";

export const useProjectsChart = () => {
  const { projects } = useProjects();

  console.log(projects);

  const projectsList = projects.reduce((acc, cur) => {
    return acc + (cur.project_status === "future" ? 1 : 0);
  }, 0);

  console.log(projectsList);

  const data = [
    { name: "future", value: 2, fill: "pink" },
    { name: "working", value: 1, fill: "blue" },
    { name: "online", value: 176, fill: "info" },
    { name: "archive", value: 42, fill: "danger" },
  ];

  //   const projectsList = projects.map((project) => {
  //     return {
  //       value: project.project_id,
  //       label: project.project_name,
  //     };
  //   });

  return { data };
};
