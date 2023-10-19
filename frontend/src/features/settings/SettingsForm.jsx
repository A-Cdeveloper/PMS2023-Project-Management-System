import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import { toast } from "react-hot-toast";
import { useSettings } from "./useSettings";
import { useUpdateSettings } from "./useUpdateSettings";
import { useAccessToken } from "../../context/authContext";

const SettingsForm = () => {
  const { isLoadingSettings, errorGetSettings, settings = {} } = useSettings();
  const { isUpdateSettings, errorUpdateSettings, updateSettings } =
    useUpdateSettings();
  const accessToken = useAccessToken();

  const {
    clients_per_page,
    projects_per_page,
    tasks_per_page,
    users_per_page,
    services_per_page,
    offers_per_page,
  } = settings;

  if (errorGetSettings) return <p>{errorGetSettings.message}</p>;

  //console.log(settings);

  const handleBlur = (e, field) => {
    if (e.target.value === "" || +e.target.value <= 0) {
      toast.error(`Value must be greater then 0`);
      return;
    }
    //console.log({ ...settings, [field]: +e.target.value });
    updateSettings({
      updatedSettings: { ...settings, [field]: +e.target.value },
      accessToken,
    });
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

      <FormRow label="Services per page">
        <Input
          type="number"
          defaultValue={services_per_page}
          onBlur={(e) => handleBlur(e, "services_per_page")}
          disabled={isLoadingSettings || isUpdateSettings}
          id="servicesperpage"
        />
      </FormRow>
      <FormRow label="Offers per page">
        <Input
          type="number"
          defaultValue={offers_per_page}
          onBlur={(e) => handleBlur(e, "offers_per_page")}
          disabled={isLoadingSettings || isUpdateSettings}
          id="offersperpage"
        />
      </FormRow>
      <FormRow></FormRow>
    </Form>
  );
};

export default SettingsForm;
