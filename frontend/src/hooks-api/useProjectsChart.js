import { useProjects } from "../features/projects/useProjects";
import { statusColors } from "../styles/theme";

export const useProjectsChart = () => {
  const { projects } = useProjects();

  console.log(projects);

  let dataProjectByStatus = [];
  let dataProjectByClient = [];

  projects.map((pro) => {
    const obj = {
      name:
        pro.project_status.slice(0, 1).toUpperCase() +
        pro.project_status.slice(1),
      value: 1,
      fill: statusColors[pro.project_status],
    };
    return dataProjectByStatus.find((el) => el.name === obj.name)
      ? dataProjectByStatus[
          dataProjectByStatus.findIndex((el) => el.name === obj.name)
        ].value++
      : dataProjectByStatus.push(obj);
  });

  projects.map((pro) => {
    const obj = {
      name: pro.client_name,
      value: 1,
      fill: statusColors["working"],
    };
    return dataProjectByClient.find((el) => el.name === obj.name)
      ? dataProjectByClient[
          dataProjectByClient.findIndex((el) => el.name === obj.name)
        ].value++
      : dataProjectByClient.push(obj);
  });

  const dataProjects = {
    dataProjectByStatus,
    dataProjectByClient: dataProjectByClient.filter((el) => el.value > 5),
  };

  console.log(dataProjects);

  // const data = [
  //   { name: "future", value: 2, fill: "pink" },
  //   { name: "working", value: 1, fill: "blue" },
  //   { name: "online", value: 176, fill: "info" },
  //   { name: "archive", value: 42, fill: "danger" },
  // ];

  return dataProjects;
};
