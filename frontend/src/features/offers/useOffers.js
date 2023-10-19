import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";

import { getOffers as getOffersApi } from "../../services/apiOffers";
import { useAccessToken } from "../../context/authContext";

export const useOffers = () => {
  const [searchParams] = useSearchParams();
  const accessToken = useAccessToken();

  // SORTING - server
  const sortBy = searchParams?.get("sortBy")
    ? searchParams.get("sortBy").split("-")
    : ["offer_date", "desc"];

  const {
    isLoading,
    error,
    data: offers = [],
  } = useQuery({
    queryKey: ["offers", sortBy],
    queryFn: () => getOffersApi({ sortBy, accessToken }),
  });

  return {
    isLoading,
    error,
    offers,
  };
};
