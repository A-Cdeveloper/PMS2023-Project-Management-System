import { useAllTasks } from "./useAllTasks";
import { statusColors } from "../styles/theme";

export const useTasksChart = () => {
  const { tasks } = useAllTasks();

  let data = [];

  tasks.map((task) => {
    const obj = {
      name:
        task.task_status.slice(0, 1).toUpperCase() + task.task_status.slice(1),
      value: 1,
      fill: statusColors[task.project_status],
    };
    return data.find((el) => el.name === obj.name)
      ? data[data.findIndex((el) => el.name === obj.name)].value++
      : data.push(obj);
  });

  // const data = [
  //   { name: "future", value: 2, fill: "pink" },
  //   { name: "working", value: 1, fill: "blue" },
  //   { name: "online", value: 176, fill: "info" },
  //   { name: "archive", value: 42, fill: "danger" },
  // ];

  return { data };
};
