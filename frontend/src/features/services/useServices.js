import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";

import { getServices as getServicesApi } from "../../services/apiServices";
import { useAccessToken } from "../../context/authContext";

export const useServices = () => {
  const [searchParams] = useSearchParams();
  const accessToken = useAccessToken();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["service_name", "asc"];

  const {
    isLoading,
    error,
    data: services = [],
  } = useQuery({
    queryKey: ["services", sortBy],
    queryFn: () => getServicesApi({ sortBy, accessToken }),
  });

  return {
    isLoading,
    error,
    services,
  };
};
