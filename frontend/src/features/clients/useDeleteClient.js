import { useMutation, useQueryClient } from "@tanstack/react-query";
import { deleteClient as deleteClientApi } from "../../services/apiClients";
import { toast } from "react-hot-toast";

const useDeleteClient = () => {
  const queryClient = useQueryClient();

  const { isLoading: isDeleteLoading, mutate: deleteClient } = useMutation({
    mutationFn: deleteClientApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["clients"], exact: false });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(`Client ${data.client.client_name} succesfully deleted!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isDeleteLoading, deleteClient };
};

export default useDeleteClient;
