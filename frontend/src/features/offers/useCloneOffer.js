import { useMutation, useQueryClient } from "@tanstack/react-query";
import { cloneOffer as cloneOfferApi } from "../../services/apiOffers";
import { toast } from "react-hot-toast";

const useCloneOffer = () => {
  const queryClient = useQueryClient();

  const { isLoading: isCloneLoading, mutate: cloneOffer } = useMutation({
    mutationFn: cloneOfferApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["offers"] });
      toast.success(`Offer ${data.offer.offer_number} succesfully duplicated!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isCloneLoading, cloneOffer };
};

export default useCloneOffer;
