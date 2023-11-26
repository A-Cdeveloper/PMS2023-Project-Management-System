import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewUser as addNewUserApi } from "../../services/apiUsers";
import { toast } from "react-hot-toast";

const useAddUser = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLoading, mutate: addNewUser } = useMutation({
    mutationFn: addNewUserApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["users"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success("User succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLoading, addNewUser };
};

export default useAddUser;
