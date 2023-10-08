import { useMutation, useQueryClient } from "@tanstack/react-query";
import { editClient as editClientApi } from "../../services/apiClients";
import { toast } from "react-hot-toast";

const useEditClient = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: editClient } = useMutation({
    mutationFn: editClientApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["clients"] });

      toast.success(`Client ${data.client.client_name} succesfully edited!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, editClient };
};

export default useEditClient;
