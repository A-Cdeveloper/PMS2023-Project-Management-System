import { API_URL } from "../../utils/constants";
import { useState } from "react";
import useChangeLogo from "./useChangeLogo";

import Form from "../../ui/Form/Form";
import Input from "../../ui/Form/Input";
import Button from "../../ui/Buttons/Button";
import Logo from "../../ui/Logo";
import Row from "../../ui/Row";

const ChangeLogo = ({ updateSettings, accessToken }) => {
  const { isEditLoading, changeLogo } = useChangeLogo();

  const [file, setFile] = useState(null);

  const handleFileChange = (event) => {
    const selectedFile = event.target.files[0];
    setFile(selectedFile);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const formData = new FormData();
    formData.append("image", file);

    changeLogo(
      { formData, accessToken },
      {
        onSuccess: (filename) => {
          setFile(null);
          e.target.reset();
          updateSettings("company_logo", `${API_URL}/${filename}`);
        },
      }
    );
  };

  return (
    <Form onSubmit={handleSubmit}>
      <Row type="horizontal">
        <Logo align="left" />
        <Input
          type="file"
          accept="image/*"
          onChange={handleFileChange}
          disabled={isEditLoading}
        />
        <Button
          size="small"
          variation={isEditLoading ? "disabled" : "primary"}
          type="submit"
          disable
        >
          Change Logo
        </Button>
      </Row>
    </Form>
  );
};

export default ChangeLogo;
