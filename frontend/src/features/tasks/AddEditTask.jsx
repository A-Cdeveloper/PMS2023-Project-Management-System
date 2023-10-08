import { useForm, Controller } from "react-hook-form";
import useEditTask from "./useEditTask";
import useAddTask from "./useAddTask";
import { useAccessToken } from "../../context/authContext";
import { taskAllProjects, taskStatus } from "./TaskParameters";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import Select from "../../ui/Form/Select";
import Button from "../../ui/Buttons/Button";

const AddEditTask = ({ taskToEdit = {}, onCloseModal }) => {
  const { isAddNewLoading, addNewTask } = useAddTask();
  const { isEditLoading, editTask } = useEditTask();
  const accessToken = useAccessToken();

  //console.log(taskToEdit);

  const isEdit = !!taskToEdit.task_id;
  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
    control,
    reset,
    getValues,
  } = useForm({ defaultValues: isEdit ? taskToEdit : {} });

  const loadingState = isAddNewLoading || isEditLoading;

  const onSubmit = (data) => {
    if (isEdit) {
      editTask(
        { task_id: taskToEdit.task_id, updatedTask: data, accessToken },
        {
          onSuccess: () => {
            onCloseModal();
          },
        }
      );
    } else {
      addNewTask(
        {
          newTask: {
            ...data,
            task_add_date: new Date(),
            task_status: "open",
          },
          accessToken,
        },
        {
          onSuccess: () => {
            onCloseModal();
          },
        }
      );
    }
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow label="Task" error={errors?.task_name}>
        <Input
          {...register("task_name", { required: "This field is required" })}
          aria-invalid={errors.task_name ? "true" : "false"}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Project" error={errors?.task_project_id}>
        <Controller
          control={control}
          name="task_project_id"
          disabled={loadingState}
          required="This field is required"
          render={({ field }) => {
            return (
              <Select
                {...field}
                onChange={(e) => {
                  return field.onChange(e.target.value);
                }}
              >
                {taskAllProjects().map((project) => (
                  <option key={project.value} value={project.value}>
                    {project.label}
                  </option>
                ))}
              </Select>
            );
          }}
        />
      </FormRow>

      <FormRow label="Description" error={errors?.task_description}>
        <Textarea
          type="textarea"
          {...register("task_description")}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Notice" error={errors?.task_notice}>
        <Textarea
          type="textarea"
          {...register("task_notice")}
          disabled={loadingState}
        />
      </FormRow>

      {isEdit && (
        <FormRow label="Add Date">
          <Input
            type="date"
            disabled={true}
            value={taskToEdit.task_add_date.slice(0, -14)}
          />
        </FormRow>
      )}
      {isEdit && (
        <>
          <FormRow label="Start date" error={errors?.task_start_time}>
            <Controller
              control={control}
              // rules={{ required: "This field is required" }}
              name="task_start_time"
              render={({ field }) => {
                //console.log(field.value.slice(0, -8));

                return (
                  <Input
                    type="datetime-local"
                    defaultValue={field.value ? field.value.slice(0, -8) : null}
                    aria-invalid={errors.task_start_time ? "true" : "false"}
                    onChange={(e) => {
                      field.onChange(e.target.value.toString());
                    }}
                    disabled={loadingState}
                  />
                );
              }}
            />
          </FormRow>

          <FormRow label="End date" error={errors?.task_end_time}>
            <Controller
              control={control}
              name="task_end_time"
              render={({ field }) => {
                // console.log(field);

                return (
                  <Input
                    type="datetime-local"
                    defaultValue={field.value ? field.value.slice(0, -8) : null}
                    min={
                      getValues("task_start_time")
                        ? getValues("task_start_time").slice(0, -8)
                        : null
                    }
                    aria-invalid={errors.task_end_time ? "true" : "false"}
                    onChange={(e) => {
                      field.onChange(e.target.value.toString());
                    }}
                    disabled={loadingState}
                  />
                );
              }}
            />
          </FormRow>

          <FormRow label="Status" error={errors?.task_status}>
            <Select
              {...register("task_status", {
                required: "This field is required",
              })}
              defaultValue={!isEdit && taskStatus[1].value}
              disabled={loadingState}
            >
              {taskStatus.map((status, index) => {
                return index !== 0 ? (
                  <option key={status.label} value={status.value}>
                    {status.label}
                  </option>
                ) : null;
              })}
            </Select>
          </FormRow>
        </>
      )}

      <FormRow>
        <Button
          variation="primary"
          size="medium"
          disabled={loadingState}
          active={null}
        >
          {isEdit ? "Submit Changes" : "Add new task"}
        </Button>
      </FormRow>
    </Form>
  );
};

export default AddEditTask;
