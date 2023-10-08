import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredClients as getFilteredClientsApi } from "../../services/apiClients";
import { useSettings } from "../settings/useSettings";
import { useClients } from "./useClients";
import { useAccessToken } from "../../context/authContext";

export const useFilterClients = () => {
  const [searchParams] = useSearchParams();
  const { settings = {} } = useSettings();
  const { clients: allClients } = useClients();
  const { clients_per_page } = settings;
  const queryClient = useQueryClient();
  const accessToken = useAccessToken();

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
      getFilteredClientsApi({
        sortBy,
        page,
        perPage: clients_per_page,
        accessToken,
      }),
    enabled: !!clients_per_page,
  });

  if (page < Math.ceil(allClients.length / clients_per_page)) {
    queryClient.prefetchQuery({
      queryKey: ["clients", sortBy, page + 1],
      queryFn: () =>
        getFilteredClientsApi({
          sortBy,
          page: page + 1,
          perPage: clients_per_page,
          accessToken,
        }),
    });
  }

  return {
    isLoading,
    error,
    clients,
  };
};
