import { useQuery } from "@tanstack/react-query";
import { getTasks as getTasksApi } from "../../services/apiTasks";
import { useSearchParams } from "react-router-dom";
import { formatSqlDate, lastThirtyDays } from "../../utils/helpers";

export const useTasks = () => {
  const [searchParams] = useSearchParams();

  const startIntervalDate = searchParams.get("startIntervalDate")
    ? searchParams.get("startIntervalDate")
    : lastThirtyDays();

  const endIntervalDate = searchParams?.get("endIntervalDate")
    ? searchParams.get("endIntervalDate")
    : formatSqlDate(new Date());

  const {
    isLoading,
    error,
    data: tasks = [],
  } = useQuery({
    queryKey: ["tasks", startIntervalDate, endIntervalDate],
    queryFn: () => getTasksApi({ startIntervalDate, endIntervalDate }),
    retry: 1,
  });

  return {
    isLoading,
    error,
    tasks,
  };
};
