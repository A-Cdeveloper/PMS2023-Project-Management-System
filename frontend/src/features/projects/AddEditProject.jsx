import { useForm, Controller } from "react-hook-form";
import useEditProject from "./useEditProject";
import useAddProject from "./useAddProject";
import { useAccessToken } from "../../context/authContext";
import { useClientsDropDown } from "../../hooks-api/useClientsDropDown";

import {
  projectHosting,
  projectPlatforms,
  projectStatus,
} from "./ProjectParameters";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import Select from "../../ui/Form/Select";
import Button from "../../ui/Buttons/Button";
import { formatJsToSqlDate } from "../../utils/helpers";

const AddEditProject = ({ projectToEdit = {}, onCloseModal }) => {
  const { isAddNewLoading, addNewProject } = useAddProject();
  const { isEditLoading, editProject } = useEditProject();
  const { fullClientsList } = useClientsDropDown();
  const accessToken = useAccessToken();

  // console.log(projectToEdit);

  const isEdit = !!projectToEdit.project_id;
  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
    control,
    reset,
    getValues,
  } = useForm({ defaultValues: isEdit ? projectToEdit : {} });

  const loadingState = isAddNewLoading || isEditLoading;

  const onSubmit = (data) => {
    if (isEdit) {
      editProject(
        {
          project_id: projectToEdit.project_id,
          updatedProject: {
            ...data,
            project_start_date: formatJsToSqlDate(data.project_start_date),
            project_end_date: formatJsToSqlDate(data.project_end_date),
          },
          accessToken,
        },
        {
          onSuccess: () => {
            onCloseModal();
          },
        }
      );
    } else {
      addNewProject(
        {
          newProject: {
            ...data,
            project_start_date: formatJsToSqlDate(data.project_start_date),
            project_end_date: formatJsToSqlDate(data.project_end_date),
          },
          accessToken,
        },
        {
          onSuccess: () => {
            onCloseModal();
          },
        }
      );
      console.log(data);
    }
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow label="Project" error={errors?.project_name}>
        <Input
          {...register("project_name", { required: "This field is required" })}
          aria-invalid={errors.project_name ? "true" : "false"}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Client" error={errors?.project_client_id}>
        <Controller
          control={control}
          name="project_client_id"
          disabled={loadingState}
          rules={{ required: "This field is required" }}
          render={({ field }) => {
            return (
              <Select
                {...field}
                onChange={(e) => {
                  return field.onChange(e.target.value);
                }}
              >
                {fullClientsList.map((client) => (
                  <option key={client.value} value={client.value}>
                    {client.label}
                  </option>
                ))}
              </Select>
            );
          }}
        />
      </FormRow>

      <FormRow label="Platform" error={errors?.project_platform}>
        <Select
          {...register("project_platform", {
            required: "This field is required",
          })}
          disabled={loadingState}
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
          disabled={loadingState}
        >
          {projectHosting.map((hosting) => (
            <option key={hosting.label} value={hosting.value}>
              {hosting.label}
            </option>
          ))}
        </Select>
      </FormRow>
      <FormRow label="Description" error={errors?.project_description}>
        <Textarea
          type="textarea"
          {...register("project_description")}
          aria-invalid={errors.project_description ? "true" : "false"}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Access data" error={errors?.project_access_data}>
        <Textarea
          type="textarea"
          {...register("project_access_data")}
          aria-invalid={errors.project_access_data ? "true" : "false"}
          disabled={loadingState}
        />
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
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Start date" error={errors?.project_start_date}>
        <Controller
          control={control}
          name="project_start_date"
          disabled={loadingState}
          rules={{ required: "This field is required" }}
          render={({ field }) => {
            const defDate = {
              ...field,
              value: field.value
                ? field.value.slice(0, 10).replace("T", " ")
                : new Date().toISOString().slice(0, 10).replace("T", " "),
            };

            console.log(defDate.value);
            return (
              <Input
                type="date"
                max={
                  getValues("project_end_date") &&
                  getValues("project_end_date").slice(0, -14)
                }
                {...defDate}
                aria-invalid={errors.project_start_date ? "true" : "false"}
                onChange={(e) => {
                  if (e.target.value === "") {
                    reset({
                      project_start_date: "",
                    });
                    return;
                  }
                  field.onChange(new Date(e.target.value).toISOString());
                }}
              />
            );
          }}
        />
      </FormRow>

      <FormRow label="End date" error={errors?.project_end_date}>
        <Controller
          disabled={loadingState}
          control={control}
          name="project_end_date"
          render={({ field }) => {
            const defDate = {
              ...field,
              value: field.value
                ? field.value.slice(0, 10).replace("T", " ")
                : "",
            };
            console.log(defDate.value);
            return (
              <Input
                type="date"
                min={
                  getValues("project_start_date") &&
                  getValues("project_start_date").slice(0, -14)
                }
                {...defDate}
                aria-invalid={errors.project_end_date ? "true" : "false"}
                onChange={(e) => {
                  if (e.target.value === "") {
                    reset({
                      project_end_date: "",
                    });
                    return;
                  }

                  return field.onChange(new Date(e.target.value).toISOString());
                }}
              />
            );
          }}
        />
      </FormRow>

      <FormRow label="Status" error={errors?.project_status}>
        <Select
          {...register("project_status", {
            required: "This field is required",
          })}
          defaultValue={!isEdit && projectStatus[1].value}
          disabled={loadingState}
        >
          {projectStatus.map((status, index) => {
            return index !== 0 ? (
              <option key={status.label} value={status.value}>
                {status.label}
              </option>
            ) : null;
          })}
        </Select>
      </FormRow>

      <FormRow>
        <Button
          variation="primary"
          size="medium"
          disabled={loadingState}
          active={null}
        >
          {isEdit ? "Submit Changes" : "Add new project"}
        </Button>
      </FormRow>
    </Form>
  );
};

export default AddEditProject;
