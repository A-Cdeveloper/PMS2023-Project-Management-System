import { useQuery } from "@tanstack/react-query";
import { getUsers as getUsersApi } from "../../services/apiUsers";
import { useSearchParams } from "react-router-dom";
//import { formatSqlDate, lastThirtyDays } from "../../utils/helpers";

export const useUsers = () => {
  const [searchParams] = useSearchParams();

  const {
    isLoading,
    error,
    data: users = [],
  } = useQuery({
    queryKey: ["users"],
    queryFn: () => getUsersApi(),
    retry: 1,
  });

  return {
    isLoading,
    error,
    users,
  };
};
