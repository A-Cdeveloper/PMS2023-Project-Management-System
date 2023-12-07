import styled from "styled-components";
import { toast } from "react-hot-toast";

import { useSettings } from "./useSettings";
import { useUpdateSettings } from "./useUpdateSettings";
import { useCreateBackup } from "./useCreateBackup";
import { useAccessToken } from "../../context/authContext";
import { useResetAll } from "./useResetAll";

import Row from "../../ui/Row";
import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import ChangeLogo from "./ChangeLogo";
import Error from "../../ui/Data/Error";
import Headline from "../../ui/Headline";
import Button from "../../ui/Buttons/Button";
import { Link, useNavigate } from "react-router-dom";
import Modal from "../../ui/Modal";
import ConfirmModal from "../../ui/ConfirmModal";
import ButtonGroup from "../../ui/Buttons/ButtonGroup";

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
  const { createBackup } = useCreateBackup();
  const { resetAll } = useResetAll();
  const accessToken = useAccessToken();
  const navigate = useNavigate();

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
    backup_path,
  } = settings;

  if (errorGetSettings) return <Error message={errorGetSettings.message} />;

  const updateSettingsHandler = (field, value) => {
    updateSettings({
      updatedSettings: { ...settings, [field]: value },
      accessToken,
    });
  };

  const handleBlur = (e, field) => {
    if (e.target.value === "") {
      toast.error(`Empty value not allow`);
      return;
    }
    if (+e.target.value <= 0) {
      toast.error(`Value must be greater then 0`);
      return;
    }

    updateSettingsHandler(field, e.target.value);
  };

  return (
    <Row type="horizontalandgap">
      <SettingSection>
        <Headline as="h3">Company details</Headline>
        <ChangeLogo
          updateSettings={updateSettingsHandler}
          accessToken={accessToken}
          isLogoExist={!!company_logo}
        />

        <Form>
          <FormRow label="Company name">
            <Input
              type="text"
              defaultValue={company_name}
              onBlur={(e) => handleBlur(e, "company_name")}
              disabled={isLoadingSettings || isUpdateSettings}
              id="companyname"
            />
          </FormRow>

          <FormRow label="Company adresse">
            <Textarea
              type="textarea"
              style={{ height: "10rem" }}
              defaultValue={company_adresse}
              onBlur={(e) => handleBlur(e, "company_adresse")}
              disabled={isLoadingSettings || isUpdateSettings}
              id="companyadresse"
            />
          </FormRow>

          <FormRow></FormRow>
        </Form>
      </SettingSection>

      <SettingSection>
        <Headline as="h3">Display settings</Headline>
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
        <Headline as="h3">Price settings</Headline>
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
        <Headline as="h3">Backup/restore</Headline>
        <Row type="horizontalandgap">
          <span>Backup database</span>
          <Button
            size="small"
            variation="primary"
            onClick={() => createBackup({ accessToken })}
          >
            Create new backup
          </Button>
        </Row>
        <Row type="horizontalandgap">
          {backup_path && (
            <>
              <span>Latest backup: {backup_path.slice(-13)}</span>
              <ButtonGroup>
                <Button size="small" variation="primary">
                  <Link to={backup_path}>Download</Link>
                </Button>
                <Button size="small" variation="primary">
                  <Link to={backup_path}>Restore</Link>
                </Button>
              </ButtonGroup>
            </>
          )}
        </Row>
        {/* <Row type="horizontalandgap">
          <>
            <Modal>
              <Modal.OpenButton opens="sistem-delete">
                <Button size="medium" variation="danger">
                  RESET SETTINGS
                </Button>
              </Modal.OpenButton>
              <Modal.Window name="sistem-delete">
                <ConfirmModal
                  resourceName="system"
                  operation=""
                  connectedResurces={false}
                  onConfirm={() => {
                    resetAll({ accessToken });
                  }}
                  disabled={() => {}}
                />
              </Modal.Window>
            </Modal>
          </>
        </Row> */}
      </SettingSection>
    </Row>
  );
};

export default SettingsForm;
