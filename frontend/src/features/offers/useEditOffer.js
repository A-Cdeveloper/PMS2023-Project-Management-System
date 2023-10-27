import { useMutation, useQueryClient } from "@tanstack/react-query";
import { editOffer as editOfferApi } from "../../services/apiOffers";
import { toast } from "react-hot-toast";

const useEditOffer = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: editOffer } = useMutation({
    mutationFn: editOfferApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["offers"] });

      toast.success(`Offer succesfully edited!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, editOffer };
};

export default useEditOffer;
