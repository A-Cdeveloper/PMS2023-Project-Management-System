import { useMutation, useQueryClient } from "@tanstack/react-query";
import { changeUserPassword as changeUserPasswordApi } from "../../services/apiUsers";
import { toast } from "react-hot-toast";
import { useCurrentUserTokens } from "../../context/authContext";

const useChangePassword = () => {
  const queryClient = useQueryClient();
  const {
    user: { uid },
  } = useCurrentUserTokens();

  const { isLoading: isEditLoading, mutate: changeUserPassword } = useMutation({
    mutationFn: changeUserPasswordApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["user", uid] });

      toast.success(`User password changed!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, changeUserPassword };
};

export default useChangePassword;
