import { API_URL } from "../../utils/constants";
import { useState } from "react";
import useChangeLogo from "./useChangeLogo";

import Form from "../../ui/Form/Form";
import Input from "../../ui/Form/Input";
import Button from "../../ui/Buttons/Button";
import Logo from "../../ui/Logo";
import Row from "../../ui/Row";
import styled from "styled-components";
import { HiXMark } from "react-icons/hi2";

const CloseButton = styled.button`
  background-color: ${(props) => props.theme.colors.danger[100]};
  border: none;
  padding: 0.3rem;
  border-radius: 50%;
  text-align: center;
  transform: translateX(0.8rem);
  position: absolute;
  top: 0.5rem;
  left: -0.5rem;
  width: 2.3rem;
  height: 2.3rem;

  &:focus,
  &:active {
    outline: none;
  }

  &:hover {
    background-color: ${(props) => props.theme.colors.danger[700]};
  }

  & svg {
    width: 1.6rem;
    height: 1.6rem;
    /* Sometimes we need both */
    fill: white;
    stroke: white;
    color: white;
  }
`;

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
      <Row type="horizontal" style={{ position: "relative" }}>
        <CloseButton
          onClick={(e) => {
            e.preventDefault();
            console.log("test");
            //removeProfileImage({ user_id, accessToken });
          }}
        >
          <HiXMark />
        </CloseButton>

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
