import { useMutation, useQueryClient } from "@tanstack/react-query";
import { changeLogo as changeLogoApi } from "../../services/apiSettings";
import { toast } from "react-hot-toast";

const useChangeLogo = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: changeLogo } = useMutation({
    mutationFn: changeLogoApi,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["settings"] });

      toast.success(`Logo changed!`);
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, changeLogo };
};

export default useChangeLogo;
