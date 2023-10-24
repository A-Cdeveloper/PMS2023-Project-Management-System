import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewOffer as addNewOfferApi } from "../../services/apiOffers";
import { toast } from "react-hot-toast";

const useAddOffer = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLoading, mutate: addNewOffer } = useMutation({
    mutationFn: addNewOfferApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["offers"] });
      toast.success("Offer succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLoading, addNewOffer };
};

export default useAddOffer;
