import { useForm } from "react-hook-form";
import useChangePassword from "./useChangePassword";
import { useCurrentUserTokens } from "../../context/authContext";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Button from "../../ui/Buttons/Button";
import Headline from "../../ui/Headline";
import {
  DataBox,
  DataBoxContent,
  DataBoxTitle,
} from "../../ui/Data/DataDetails";
import Row from "../../ui/Row";

const ChangePassword = () => {
  const { isEditLoading, changeUserPassword } = useChangePassword();
  const {
    user: { uid: user_id, accessToken },
  } = useCurrentUserTokens();

  const {
    register,
    handleSubmit,
    watch,
    getValues,
    reset,
    formState: { errors },
  } = useForm();

  const onSubmit = (data) => {
    const { newpassword: newPassword } = data;
    changeUserPassword({ user_id, newPassword, accessToken });
    reset();
  };

  return (
    <>
      <Row>
        <Headline as="h3">Change password:</Headline>
      </Row>
      <Form onSubmit={handleSubmit(onSubmit)}>
        <DataBox>
          <DataBoxTitle>New Password (min 8 characters)</DataBoxTitle>
          <DataBoxContent>
            <FormRow error={errors?.newpassword} type="nospace">
              <Input
                type="password"
                {...register("newpassword", {
                  required: "This field is required",
                  minLength: {
                    value: 8,
                    message: "Password needs a minimum of 8 characters",
                  },
                })}
                aria-invalid={errors.newpassword ? "true" : "false"}
                disabled={isEditLoading}
              />
            </FormRow>
          </DataBoxContent>
        </DataBox>
        <DataBox>
          <DataBoxTitle>Re- Password</DataBoxTitle>
          <DataBoxContent>
            <FormRow error={errors?.repassword} type="nospace">
              <Input
                type="password"
                {...register("repassword", {
                  required: "This field is required",
                  validate: (value) =>
                    getValues().newpassword === value ||
                    "Passwords need to match",
                })}
                aria-invalid={errors.repassword ? "true" : "false"}
                disabled={isEditLoading}
              />
            </FormRow>
          </DataBoxContent>
        </DataBox>

        <FormRow>
          <Button
            variation="primary"
            size="medium"
            active={null}
            disabled={isEditLoading}
          >
            Submit
          </Button>
        </FormRow>
      </Form>
    </>
  );
};

export default ChangePassword;
