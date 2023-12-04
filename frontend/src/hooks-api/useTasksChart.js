import { useSearchParams } from "react-router-dom";
import { useAllTasks } from "./useAllTasks";

import { eachMonthOfInterval, format, isSameMonth, subMonths } from "date-fns";

export const useTasksChart = () => {
  const { tasks } = useAllTasks();

  //const tasks = [];

  let haveTasks = true;
  const invoicedTasks = tasks.filter((task) => task.task_status === "invoiced");
  if (invoicedTasks.length === 0) {
    haveTasks = !haveTasks;
  }

  const [searchParams] = useSearchParams();

  const filteredPeriod = searchParams.get("last")
    ? searchParams.get("last")
    : 6;

  const allDates = eachMonthOfInterval({
    start: subMonths(new Date(), +filteredPeriod),
    end: new Date(),
  });

  const dateFrom = format(allDates[0], "MMM yyyy");
  const dateTo = format(allDates.pop(), "MMM yyyy");

  const dataTasks = allDates.map((date) => {
    return {
      name: format(date, "MMM yyyy"),
      value: invoicedTasks
        .filter((task) => isSameMonth(new Date(task.task_add_date), date))
        .reduce((acc, cur) => {
          return acc + 1;
        }, 0),
    };
  });

  return { dataTasks, dateFrom, dateTo, haveTasks };
};
