import { useMutation, useQueryClient } from "@tanstack/react-query";
import { changeUserRole as changeUserRoleApi } from "../../services/apiUsers";
import { toast } from "react-hot-toast";

const useChangeRole = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: changeUserRole } = useMutation({
    mutationFn: changeUserRoleApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["users"] });

      toast.success(`User role changed!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, changeUserRole };
};

export default useChangeRole;
