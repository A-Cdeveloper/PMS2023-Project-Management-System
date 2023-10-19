import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { getFilteredOffers as getFilteredOffersApi } from "../../services/apiOffers";
//import { useSettings } from "../settings/useSettings";
import { useOffers } from "./useOffers";
import { useAccessToken } from "../../context/authContext";

export const useFilterOffers = () => {
  const [searchParams] = useSearchParams();
  //const { settings = {} } = useSettings();
  const { offers: allOffers } = useOffers();
  //const { offers_per_page } = settings;
  const queryClient = useQueryClient();
  const accessToken = useAccessToken();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["offer_number", "asc"];

  // PAGINATION
  const page = searchParams?.get("page") ? +searchParams.get("page") : 1;

  const {
    isLoading,
    error,
    data: offers = {},
  } = useQuery({
    queryKey: ["offers", sortBy, page],
    queryFn: () =>
      getFilteredOffersApi({
        sortBy,
        page,
        perPage: 10,
        accessToken,
      }),
    enabled: !!10,
  });

  if (page < Math.ceil(allOffers.length / 10)) {
    queryClient.prefetchQuery({
      queryKey: ["offers", sortBy, page + 1],
      queryFn: () =>
        getFilteredOffersApi({
          sortBy,
          page: page + 1,
          perPage: 10,
          accessToken,
        }),
    });
  }

  return {
    isLoading,
    error,
    offers,
  };
};
