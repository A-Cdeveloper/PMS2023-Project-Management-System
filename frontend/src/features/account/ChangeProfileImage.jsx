import { useCurrentUserTokens } from "../../context/authContext";
import useChangeProfileImage from "./useChangeProfileImage";
import Form from "../../ui/Form/Form";
import Input from "../../ui/Form/Input";
import { useState } from "react";
import Button from "../../ui/Buttons/Button";

const ChangeProfileImage = () => {
  const { isEditLoading, changeProfileImage } = useChangeProfileImage();
  const {
    user: { uid: user_id, accessToken },
  } = useCurrentUserTokens();

  const [file, setFile] = useState(null);

  const handleFileChange = (event) => {
    const selectedFile = event.target.files[0];
    setFile(selectedFile);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const formData = new FormData();
    formData.append("image", file);
    changeProfileImage(
      { formData, user_id, accessToken },
      {
        onSuccess: () => {
          setFile(null);
          e.target.reset();
        },
      }
    );
  };

  return (
    <Form onSubmit={handleSubmit}>
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
        Change Image
      </Button>
    </Form>
  );
};

export default ChangeProfileImage;
