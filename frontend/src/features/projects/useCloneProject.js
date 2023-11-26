import { useMutation, useQueryClient } from "@tanstack/react-query";
import { cloneProject as cloneProjectApi } from "../../services/apiProjects";
import { toast } from "react-hot-toast";

const useCloneProject = () => {
  const queryClient = useQueryClient();

  const { isLoading: isCloneLoading, mutate: cloneProject } = useMutation({
    mutationFn: cloneProjectApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["projects"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(
        `Project ${data.project.project_name} succesfully duplicated!`
      );
    },
    onError: (err) => toast.error(err.message),
  });

  return { isCloneLoading, cloneProject };
};

export default useCloneProject;
