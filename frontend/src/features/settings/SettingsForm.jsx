import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import { toast } from "react-hot-toast";
import { useSettings } from "./useSettings";
import { useUpdateSettings } from "./useUpdateSettings";
//import { useLocalStorageState } from "../../hooks/useLocalStorageState";

const SettingsForm = () => {
  const { isLoadingSettings, errorGetSettings, settings = {} } = useSettings();
  const { isUpdateSettings, errorUpdateSettings, updateSettings } =
    useUpdateSettings();
  // const {} = useLocalStorageState();

  const {
    clients_per_page,
    projects_per_page,
    tasks_per_page,
    users_per_page,
  } = settings;

  if (errorGetSettings) return <p>{errorGetSettings.message}</p>;

  //console.log(settings);

  const handleBlur = (e, field) => {
    if (e.target.value === "" || +e.target.value <= 0) {
      toast.error(`Value must be greater then 0`);
      return;
    }

    updateSettings(
      { ...settings, [field]: +e.target.value }
      // {
      //   // LOCALSTORAGE
      //   onSuccess: () => {
      //     localStorage.setItem(
      //       "settings",
      //       JSON.stringify({ ...settings, [field]: +e.target.value })
      //     );
      //   },
      // }
    );
  };

  return (
    <Form>
      <FormRow label="Clients per page">
        <Input
          type="number"
          defaultValue={clients_per_page}
          onBlur={(e) => handleBlur(e, "clients_per_page")}
          disabled={isLoadingSettings || isUpdateSettings}
          id="clientperpage"
        />
      </FormRow>
      <FormRow label="Projects per page">
        <Input
          type="number"
          defaultValue={projects_per_page}
          onBlur={(e) => handleBlur(e, "projects_per_page")}
          disabled={isLoadingSettings || isUpdateSettings}
          id="projectsperpage"
        />
      </FormRow>
      <FormRow label="Tasks per page">
        <Input
          type="number"
          defaultValue={tasks_per_page}
          onBlur={(e) => handleBlur(e, "tasks_per_page")}
          disabled={isLoadingSettings || isUpdateSettings}
          id="tasksperpage"
        />
      </FormRow>
      <FormRow label="Users per page">
        <Input
          type="number"
          defaultValue={users_per_page}
          onBlur={(e) => handleBlur(e, "users_per_page")}
          disabled={isLoadingSettings || isUpdateSettings}
          id="usersperpage"
        />
      </FormRow>
      <FormRow></FormRow>
    </Form>
  );
};

export default SettingsForm;
