import { useMutation, useQueryClient } from "@tanstack/react-query";
import { addNewProject as addNewProjectApi } from "../../services/apiProjects";
import { toast } from "react-hot-toast";

const useAddProject = () => {
  const queryClient = useQueryClient();

  const { isLoading: isAddNewLoading, mutate: addNewProject } = useMutation({
    mutationFn: addNewProjectApi,
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["projects"] });
      toast.success("Project succesfully added!");
    },
    onError: (err) => toast.error(err.message),
  });

  return { isAddNewLoading, addNewProject };
};

export default useAddProject;
