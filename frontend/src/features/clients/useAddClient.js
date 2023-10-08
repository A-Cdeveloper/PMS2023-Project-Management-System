import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewClient as addNewClientApi } from "../../services/apiClients";
import { toast } from "react-hot-toast";

const useAddClient = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLoading, mutate: addNewClient } = useMutation({
    mutationFn: addNewClientApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["clients"] });
      toast.success("Client succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLoading, addNewClient };
};

export default useAddClient;
