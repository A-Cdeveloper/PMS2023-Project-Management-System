import SettingsForm from "../features/settings/SettingsForm";
import Headline from "../ui/Headline";
import Row from "../ui/Row";

const Settings = () => {
  return (
    <>
      <Row>
        <Headline as="h1">Settings</Headline>
      </Row>
      <SettingsForm />
    </>
  );
};

export default Settings;
