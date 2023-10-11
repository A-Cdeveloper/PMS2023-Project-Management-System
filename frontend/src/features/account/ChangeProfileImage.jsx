import { useAccessToken } from "../../context/authContext";
import Input from "../../ui/Form/Input";

const ChangeProfileImage = ({ clientToEdit = {} }) => {
  const accessToken = useAccessToken();

  //   const loadingState = isAddNewLoading || isEditLoading;

  const handleBlur = (e, field) => {
    // if (e.target.value === "" || +e.target.value <= 0) {
    //   toast.error(`Value must be greater then 0`);
    //   return;
    // }
    //console.log({ ...settings, [field]: +e.target.value });
    // updateSettings({
    //   updatedSettings: { ...settings, [field]: +e.target.value },
    //   accessToken,
    // });
    console.log(e.target.files[0]);
  };

  return (
    <>
      <Input
        type="file"
        accept="image/*"
        onChange={(e) => handleBlur(e, "user_avatar")}
      />
    </>
  );
};

export default ChangeProfileImage;
