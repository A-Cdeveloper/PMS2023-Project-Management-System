import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredTasks as getFilteredTasksApi } from "../../services/apiTasks";
import { useSettings } from "../settings/useSettings";
import { useTasks } from "./useTasks";
import { formatSqlDate, lastThirtyDays } from "../../utils/helpers";
import { useAccessToken } from "../../context/authContext";

export const useFilterTasks = () => {
  const [searchParams] = useSearchParams();
  const { settings = {} } = useSettings();
  const { tasks: allTasks } = useTasks();
  const { tasks_per_page } = settings;
  const queryClient = useQueryClient();
  const accessToken = useAccessToken();

  const startIntervalDate = searchParams.get("startIntervalDate")
    ? searchParams.get("startIntervalDate")
    : lastThirtyDays();

  const endIntervalDate = searchParams?.get("endIntervalDate")
    ? searchParams.get("endIntervalDate")
    : formatSqlDate(new Date());

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: tasks = {},
  } = useQuery({
    queryKey: ["tasks", page, startIntervalDate, endIntervalDate],
    queryFn: () =>
      getFilteredTasksApi({
        page,
        perPage: tasks_per_page,
        startIntervalDate,
        endIntervalDate,
        accessToken,
      }),
    enabled: !!tasks_per_page,
    retry: 1,
  });

  if (page < Math.ceil(allTasks.length / tasks_per_page)) {
    queryClient.prefetchQuery({
      queryKey: ["tasks", page + 1, startIntervalDate, endIntervalDate],
      queryFn: () =>
        getFilteredTasksApi({
          page: page + 1,
          perPage: tasks_per_page,
          startIntervalDate,
          endIntervalDate,
          accessToken,
        }),
      retry: 1,
    });
  }

  return {
    isLoading,
    error,
    tasks,
  };
};
