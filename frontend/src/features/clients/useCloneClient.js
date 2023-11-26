import { useMutation, useQueryClient } from "@tanstack/react-query";
import { cloneClient as cloneClientApi } from "../../services/apiClients";
import { toast } from "react-hot-toast";

const useCloneClient = () => {
  const queryClient = useQueryClient();

  const { isLoading: isCloneLoading, mutate: cloneClient } = useMutation({
    mutationFn: cloneClientApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["clients"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(
        `Client ${data.client.client_name} succesfully duplicated!`
      );
    },
    onError: (err) => toast.error(err.message),
  });

  return { isCloneLoading, cloneClient };
};

export default useCloneClient;
