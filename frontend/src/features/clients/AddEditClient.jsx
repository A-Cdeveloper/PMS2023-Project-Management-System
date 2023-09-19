import { useForm } from "react-hook-form";
import useAddClient from "./useAddClient";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import Button from "../../ui/Buttons/Button";
import Spinner from "../../ui/Spinner";
import useEditClient from "./useEditClient";

const AddEditClient = ({ clientToEdit = {}, onCloseModal }) => {
  const { isAddNewLoading, addNewClient } = useAddClient();
  const { isEditLoading, editClient } = useEditClient();

  const isEdit = !!clientToEdit.client_id;
  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm({ defaultValues: isEdit ? clientToEdit : {} });

  const onSubmit = (data) => {
    if (isEdit) {
      editClient(
        { clientId: clientToEdit.client_id, updatedClient: data },
        {
          onSuccess: () => {
            onCloseModal();
          },
        }
      );
      console.log(data);
    } else {
      addNewClient(data, {
        onSuccess: () => {
          onCloseModal();
        },
      });
    }
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow label="Client" error={errors?.client_name}>
        <Input
          {...register("client_name", { required: "This field is required" })}
          aria-invalid={errors.client_name ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="Client adresse" error={errors?.client_adresse}>
        <Textarea
          type="textarea"
          {...register("client_adresse", {
            required: "This field is required",
          })}
          aria-invalid={errors.client_adresse ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="Contact person" error={errors?.client_contact}>
        <Input
          type="text"
          {...register("client_contact", {
            required: false,
          })}
        />
      </FormRow>

      <FormRow label="Phone" error={errors?.client_phone}>
        <Input
          type="tel"
          {...register("client_phone", {
            required: "This field is required",
            pattern: {
              value: /^\+(?:[0-9] ?){6,14}[0-9]$/,
              message: "Please specify a valid phone number (ex. +49xxx)",
            },
          })}
          aria-invalid={errors.client_phone ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="Fax" error={errors?.client_fax}>
        <Input
          type="tel"
          {...register("client_fax", {
            pattern: {
              value: /^\+(?:[0-9] ?){6,14}[0-9]$/,
              message: "Please specify a valid fax number (ex. +49xxx)",
            },
          })}
          aria-invalid={errors.client_fax ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="E-Mail" error={errors?.client_email}>
        <Input
          type="email"
          {...register("client_email", {
            required: "This field is required",
            pattern: {
              value: /\S+@\S+\.\S+/,
              message: "Please specify a valid email",
            },
          })}
          aria-invalid={errors.client_email ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="Website" error={errors?.client_site}>
        <Input
          type="url"
          {...register("client_site", {
            pattern: {
              value: /^(http(s)?:\/\/)+[\w\-\._~:\/?#[\]@!\$&'\(\)\*\+,;=.]+$/,
              message: "Please specify a valid url (ex.https://)",
            },
          })}
          aria-invalid={errors.client_site ? "true" : "false"}
        />
      </FormRow>
      <FormRow>
        <Button variation="primary" size="medium">
          {isEdit ? "Submit Changes" : "Add new client"}
        </Button>
      </FormRow>
    </Form>
  );
};

export default AddEditClient;
