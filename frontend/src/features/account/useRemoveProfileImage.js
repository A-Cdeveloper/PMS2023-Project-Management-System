import { useMutation, useQueryClient } from "@tanstack/react-query";
import { removeProfileImage as removeProfileImageApi } from "../../services/apiUsers";
import { toast } from "react-hot-toast";
import { useCurrentUserTokens } from "../../context/authContext";

const useRemoveProfileImage = () => {
  const queryClient = useQueryClient();
  const {
    user: { uid },
  } = useCurrentUserTokens();

  const { isLoading: isDeleteLoading, mutate: removeProfileImage } =
    useMutation({
      mutationFn: removeProfileImageApi,
      onSuccess: () => {
        queryClient.invalidateQueries({ queryKey: ["user", uid] });

        toast.success(`Profile image deleted!`);
      },
      onError: (err) => toast.error(err.message),
    });

  return { isDeleteLoading, removeProfileImage };
};

export default useRemoveProfileImage;
