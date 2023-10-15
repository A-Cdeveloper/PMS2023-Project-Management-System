import { useForm } from "react-hook-form";
import useAddUser from "./useAddUser";

import { useAccessToken } from "../../context/authContext";
import { userRoles } from "./UserParameters";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Button from "../../ui/Buttons/Button";
import Select from "../../ui/Form/Select";

const AddUser = ({ onCloseModal }) => {
  const { isAddNewLoading, addNewUser } = useAddUser();
  const accessToken = useAccessToken();

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm();

  const onSubmit = (data) => {
    // console.log(data);

    addNewUser(
      { newUser: data, accessToken },
      {
        onSuccess: () => {
          onCloseModal();
        },
      }
    );
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow label="First Name" error={errors?.first_name}>
        <Input
          {...register("first_name", { required: "This field is required" })}
          aria-invalid={errors.first_name ? "true" : "false"}
          disabled={isAddNewLoading}
        />
      </FormRow>

      <FormRow label="Last Name" error={errors?.last_name}>
        <Input
          {...register("last_name", { required: "This field is required" })}
          aria-invalid={errors.last_name ? "true" : "false"}
          disabled={isAddNewLoading}
        />
      </FormRow>

      <FormRow label="Username" error={errors?.username}>
        <Input
          {...register("username", { required: "This field is required" })}
          aria-invalid={errors.username ? "true" : "false"}
          disabled={isAddNewLoading}
        />
      </FormRow>

      <FormRow label="E-Mail" error={errors?.email}>
        <Input
          type="email"
          {...register("email", {
            required: "This field is required",
            pattern: {
              value: /\S+@\S+\.\S+/,
              message: "Please specify a valid email",
            },
          })}
          aria-invalid={errors.client_email ? "true" : "false"}
          disabled={isAddNewLoading}
        />
      </FormRow>

      <FormRow label="Role" error={errors?.role}>
        <Select
          {...register("role", {
            required: "This field is required",
          })}
          disabled={isAddNewLoading}
        >
          {userRoles().map((role) => (
            <option key={role.label} value={role.value}>
              {role.label}
            </option>
          ))}
        </Select>
      </FormRow>

      <FormRow>
        <Button
          variation="primary"
          size="medium"
          active={null}
          disabled={isAddNewLoading}
        >
          Add new user
        </Button>
      </FormRow>
    </Form>
  );
};

export default AddUser;
