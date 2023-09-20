import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredClients as getFilteredClientsApi } from "../../services/apiClients";
import { useSettings } from "../settings/useSettings";

export const useFilterClients = () => {
  const [searchParams] = useSearchParams();
  const { isLoadingSettings, errorGetSettings, settings = {} } = useSettings();
  const { clients_per_page } = settings;

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["client_name", "asc"];

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: clients = {},
  } = useQuery({
    queryKey: ["clients", sortBy, page],
    queryFn: () =>
      getFilteredClientsApi({ sortBy, page, perPage: clients_per_page }),
    enabled: !!clients_per_page,
  });

  return {
    isLoading,
    error,
    clients,
  };
};
