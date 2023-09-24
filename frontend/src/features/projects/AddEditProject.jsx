import { useForm } from "react-hook-form";
// import useAddClient from "./useAddClient";
import useEditProject from "./useEditProject";
// import { useClients } from "../clients/useClients";

import {
  projectHosting,
  projectPlatforms,
  projectStatus,
  projectAllClients,
} from "./ProjectParameters";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import Select from "../../ui/Form/Select";
import Button from "../../ui/Buttons/Button";
// import Spinner from "../../ui/Spinner";

const AddEditClient = ({ projectToEdit = {}, onCloseModal }) => {
  //   const { isAddNewLoading, addNewClient } = useAddClient();
  const { isEditLoading, editProject } = useEditProject();

  //console.log(projectToEdit);

  const isEdit = !!projectToEdit.project_id;
  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm({ defaultValues: isEdit ? projectToEdit : {} });

  const onSubmit = (data) => {
    console.log(data);
    // if (isEdit) {
    //   editClient(
    //     { clientId: clientToEdit.client_id, updatedClient: data },
    //     {
    //       onSuccess: () => {
    //         onCloseModal();
    //       },
    //     }
    //   );
    //   console.log(data);
    // } else {
    //   addNewClient(data, {
    //     onSuccess: () => {
    //       onCloseModal();
    //     },
    //   });
    // }
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow label="Project" error={errors?.project_name}>
        <Input
          {...register("project_name", { required: "This field is required" })}
          aria-invalid={errors.project_name ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="Client" error={errors?.client_name}>
        <Select
          {...register("project_client_id", {
            required: "This field is required",
          })}
        >
          {projectAllClients().map((client) => (
            <option key={client.value} value={+client.value}>
              {client.label}
            </option>
          ))}
        </Select>
      </FormRow>

      <FormRow label="Url" error={errors?.project_url}>
        <Input
          type="url"
          {...register("project_url", {
            pattern: {
              value: /^(http(s)?:\/\/)+[\w\-\._~:\/?#[\]@!\$&'\(\)\*\+,;=.]+$/,
              message: "Please specify a valid url (ex.https://)",
            },
          })}
          aria-invalid={errors.project_url ? "true" : "false"}
        />
      </FormRow>

      <FormRow label="Platform" error={errors?.project_platform}>
        <Select
          {...register("project_platform", {
            required: "This field is required",
          })}
        >
          {projectPlatforms().map((platform) => (
            <option key={platform.label} value={platform.value}>
              {platform.label}
            </option>
          ))}
        </Select>
      </FormRow>

      <FormRow label="Hosting" error={errors?.project_hosting}>
        <Select
          {...register("project_hosting", {
            required: "This field is required",
          })}
        >
          {projectHosting.map((hosting) => (
            <option key={hosting.label} value={hosting.value}>
              {hosting.label}
            </option>
          ))}
        </Select>
      </FormRow>

      <FormRow label="Status" error={errors?.project_status}>
        <Select
          {...register("project_status", {
            required: "This field is required",
          })}
        >
          {projectStatus.map((status) => (
            <option key={status.label} value={status.value}>
              {status.label}
            </option>
          ))}
        </Select>
      </FormRow>

      {/* <FormRow label="Client adresse" error={errors?.client_adresse}>
        <Textarea
          type="textarea"
          {...register("client_adresse", {
            required: "This field is required",
          })}
          aria-invalid={errors.client_adresse ? "true" : "false"}
        />
      </FormRow> */}

      {/* <FormRow label="Contact person" error={errors?.client_contact}>
        <Input
          type="text"
          {...register("client_contact", {
            required: false,
          })}
        />
      </FormRow> */}

      {/* <FormRow label="Phone" error={errors?.client_phone}>
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
      </FormRow> */}

      {/* <FormRow label="Fax" error={errors?.client_fax}>
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
      </FormRow> */}

      {/* <FormRow label="E-Mail" error={errors?.client_email}>
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
      </FormRow> */}

      <FormRow>
        <Button variation="primary" size="medium">
          {isEdit ? "Submit Changes" : "Add new project"}
        </Button>
      </FormRow>
    </Form>
  );
};

export default AddEditClient;
