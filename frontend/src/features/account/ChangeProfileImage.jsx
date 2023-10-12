import { useCurrentUserTokens } from "../../context/authContext";
import useChangeProfileImage from "./useChangeProfileImage";
import Form from "../../ui/Form/Form";
import Input from "../../ui/Form/Input";
import { useState } from "react";

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
    event.preventDefault();
    const formData = new FormData();
    formData.append("image", file);
    changeProfileImage(formData);
  };

  return (
    <Form onSubmit={handleSubmit}>
      <Input type="file" accept="image/*" onChange={handleFileChange} />
      <button type="submit">Upload Image</button>
    </Form>
  );
};

export default ChangeProfileImage;
