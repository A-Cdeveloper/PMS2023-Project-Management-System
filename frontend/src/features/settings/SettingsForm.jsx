import styled from "styled-components";
import { toast } from "react-hot-toast";

import { useSettings } from "./useSettings";
import { useUpdateSettings } from "./useUpdateSettings";
import { useAccessToken } from "../../context/authContext";

import Row from "../../ui/Row";
import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import Button from "../../ui/Buttons/Button";

const SettingSection = styled.div`
  background: white;
  padding: 2rem 2rem 0 2rem;
  box-shadow: ${(props) => props.theme.shadow.xs};
  display: flex;
  flex-direction: column;
  flex: 1;

  & > h3 {
    margin-bottom: 2rem;
  }
`;

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
    regular_whour_price,
    special_whour_price,
    company_logo,
    company_name,
    company_adresse,
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
    <Row type="horizontalandgap">
      <SettingSection>
        <h3>Company details</h3>
        <Form>
          <FormRow label="Company logo">
            <Input
              type="file"
              accept="image/*"
              onChange={() => {}}
              disabled={isLoadingSettings || isUpdateSettings}
            />
          </FormRow>
          <Button size="small">Change Image</Button>
          <FormRow></FormRow>
        </Form>

        <Form>
          <FormRow label="Company name">
            <Input
              defaultValue={company_name}
              onBlur={(e) => handleBlur(e, "company_name")}
              disabled={isLoadingSettings || isUpdateSettings}
              id="companyname"
            />
          </FormRow>

          <FormRow label="Company adresse">
            <Textarea
              defaultValue={company_adresse}
              type="textarea"
              style={{ height: "10rem" }}
              disabled={isLoadingSettings || isUpdateSettings}
            />
          </FormRow>

          <FormRow></FormRow>
        </Form>
      </SettingSection>

      <SettingSection>
        <h3>Display settings</h3>
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
      </SettingSection>
      <SettingSection>
        <h3>Price settings</h3>
        <FormRow label="Regular price/h (€)">
          <Input
            type="number"
            style={{ width: "10rem" }}
            defaultValue={regular_whour_price}
            onBlur={(e) => handleBlur(e, "regular_whour_price")}
            disabled={isLoadingSettings || isUpdateSettings}
            id="regularwhourprice"
          />
        </FormRow>
        <FormRow label="Special price/h (€)">
          <>
            <Input
              type="number"
              style={{ width: "10rem" }}
              defaultValue={special_whour_price}
              onBlur={(e) => handleBlur(e, "special_whour_price")}
              disabled={isLoadingSettings || isUpdateSettings}
              id="specialwhourprice"
            />
          </>
        </FormRow>
        <FormRow></FormRow>
      </SettingSection>
      <SettingSection>
        <div>Backup database</div> <div>Restore database</div>
      </SettingSection>
    </Row>
  );
};

export default SettingsForm;
