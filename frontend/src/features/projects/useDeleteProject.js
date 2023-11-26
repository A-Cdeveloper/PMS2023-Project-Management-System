import { useMutation, useQueryClient } from "@tanstack/react-query";
import { deleteProject as deleteProjectApi } from "../../services/apiProjects";
import { toast } from "react-hot-toast";

const useDeleteProject = () => {
  const queryClient = useQueryClient();

  const { isLoading: isDeleteLoading, mutate: deleteProject } = useMutation({
    mutationFn: deleteProjectApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["projects"] });
      queryClient.invalidateQueries({ queryKey: ["settings"] });
      toast.success(
        `Project ${data.project.project_name} succesfully deleted!`
      );
    },
    onError: (err) => toast.error(err.message),
  });

  return { isDeleteLoading, deleteProject };
};

export default useDeleteProject;
