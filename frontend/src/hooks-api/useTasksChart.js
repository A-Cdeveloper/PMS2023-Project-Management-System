import { useAllTasks } from "./useAllTasks";

import { eachMonthOfInterval, format, isSameMonth, subMonths } from "date-fns";

export const useTasksChart = () => {
  const { tasks } = useAllTasks();

  console.log(tasks);

  const allDates = eachMonthOfInterval({
    start: subMonths(new Date(), 5),
    end: new Date(),
  });

  const dataTasks = allDates.map((date) => {
    return {
      name: format(date, "MMM yyyy"),
      value: tasks
        .filter(
          (task) =>
            isSameMonth(new Date(task.task_add_date), date) &&
            task.task_status === "invoiced"
        )
        .reduce((acc, cur) => {
          return acc + 1;
        }, 0),
    };
  });

  return { dataTasks };
};
