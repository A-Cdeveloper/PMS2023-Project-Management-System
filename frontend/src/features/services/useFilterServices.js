import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredServices as getFilteredServicesApi } from "../../services/apiServices";
import { useSettings } from "../settings/useSettings";
import { useServices } from "./useServices";
import { useAccessToken } from "../../context/authContext";

export const useFilterServices = () => {
  const [searchParams] = useSearchParams();
  const { settings = {} } = useSettings();
  const { services: allServices } = useServices();
  const { services_per_page } = settings;
  const queryClient = useQueryClient();
  const accessToken = useAccessToken();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["service_name", "asc"];

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: services = {},
  } = useQuery({
    queryKey: ["services", sortBy, page],
    queryFn: () =>
      getFilteredServicesApi({
        sortBy,
        page,
        perPage: services_per_page,
        accessToken,
      }),
    enabled: !!services_per_page,
  });

  if (page < Math.ceil(allServices.length / services_per_page)) {
    queryClient.prefetchQuery({
      queryKey: ["services", sortBy, page + 1],
      queryFn: () =>
        getFilteredServicesApi({
          sortBy,
          page: page + 1,
          perPage: services_per_page,
          accessToken,
        }),
    });
  }

  return {
    isLoading,
    error,
    services,
  };
};
