import { useQuery } from "@tanstack/react-query";
import { singleOffer as singleOfferApi } from "../../services/apiOffers";
import { useParams } from "react-router-dom";
import { useAccessToken } from "../../context/authContext";

export const useOffer = () => {
  const { offerId: offer_id } = useParams();
  const accessToken = useAccessToken();

  const {
    isLoading,
    error,
    data: offer,
  } = useQuery({
    queryKey: ["offer", +offer_id],
    queryFn: () => singleOfferApi({ offer_id, accessToken }),
    cacheTime: Infinity,
  });

  return {
    isLoading,
    error,
    offer,
  };
};
