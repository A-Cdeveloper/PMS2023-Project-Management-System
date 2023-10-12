import { useMutation, useQueryClient } from "@tanstack/react-query";
import { changeProfileImage as changeProfileImageApi } from "../../services/apiUsers";
import { toast } from "react-hot-toast";
import { useCurrentUserTokens } from "../../context/authContext";

const useChangeProfileImage = () => {
  const queryClient = useQueryClient();
  const {
    user: { uid },
  } = useCurrentUserTokens();

  const { isLoading: isEditLoading, mutate: changeProfileImage } = useMutation({
    mutationFn: changeProfileImageApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["user", uid] });

      toast.success(`Profile image changed!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, changeProfileImage };
};

export default useChangeProfileImage;
