import { useMutation, useQueryClient } from "@tanstack/react-query";
import { editProject as editProjectApi } from "../../services/apiProjects";
import { toast } from "react-hot-toast";

const useEditProject = () => {
  const queryClient = useQueryClient();

  const { isLoading: isEditLoading, mutate: editProject } = useMutation({
    mutationFn: editProjectApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["projects"] });
      toast.success(
        `Project ${data.project.project_name} succesfully updated!`
      );
    },
    onError: (err) => toast.error(err.message),
  });

  return { isEditLoading, editProject };
};

export default useEditProject;
