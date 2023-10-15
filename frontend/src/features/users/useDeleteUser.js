import { useMutation, useQueryClient } from "@tanstack/react-query";
import { deleteUser as deleteUserApi } from "../../services/apiUsers";
import { toast } from "react-hot-toast";

const useDeleteUser = () => {
  const queryClient = useQueryClient();

  const { isLoading: isDeleteLoading, mutate: deleteUser } = useMutation({
    mutationFn: deleteUserApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["users"] });
      toast.success(`User ${data.user.username} succesfully deleted!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isDeleteLoading, deleteUser };
};

export default useDeleteUser;
