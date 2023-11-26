import { useMutation, useQueryClient } from "@tanstack/react-query";
import { deleteOffer as deleteOfferApi } from "../../services/apiOffers";
import { toast } from "react-hot-toast";

const useDeleteOffer = () => {
  const queryClient = useQueryClient();

  const { isLoading: isDeleteLoading, mutate: deleteOffer } = useMutation({
    mutationFn: deleteOfferApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["offers"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(`Offer ${data.offer.offer_number} succesfully deleted!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isDeleteLoading, deleteOffer };
};

export default useDeleteOffer;
