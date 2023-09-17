import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewClient as addNewClientApi } from "../../services/apiClients";
import { toast } from "react-hot-toast";

const useAddClient = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLaoding, mutate: addNewClient } = useMutation({
    mutationFn: addNewClientApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["clients"] });
      toast.success("Client succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLaoding, addNewClient };
};

export default useAddClient;
