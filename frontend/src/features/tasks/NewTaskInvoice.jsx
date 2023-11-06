import { useForm } from "react-hook-form";
import styled from "styled-components";
import { useQueryClient } from "@tanstack/react-query";

import Select from "../../ui/Form/Select";
import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Row from "../../ui/Row";
import Button from "../../ui/Buttons/Button";
import Textarea from "../../ui/Form/Textarea";

import { useSettings } from "../settings/useSettings";
import useEditTask from "./useEditTask";
import { taskPrice } from "./TaskParameters";
import { useAccessToken } from "../../context/authContext";

const Label = styled.label`
  font-weight: 500;
  font-size: 1.5rem;
`;

const NewTaskInvoice = ({ task, duration }) => {
  const { settings = {} } = useSettings();
  const { isEditLoading, editTask } = useEditTask();
  const accessToken = useAccessToken();
  const queryClient = useQueryClient();

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
    control,
    reset,
    getValues,
    setValue,
  } = useForm();

  const onSubmit = (data) => {
    const pricePerhour =
      data.task_price_per_hour === "regular"
        ? settings?.regular_whour_price
        : settings?.special_whour_price;

    const updatedTask = {
      ...task,
      ...data,
      task_price: pricePerhour * duration,
      task_invoice_date: new Date().toISOString(),
      task_status: "invoiced",
    };

    //console.log(updatedTask);

    editTask(
      { task_id: task.task_id, updatedTask, accessToken },
      {
        onSettled: () => {
          queryClient.invalidateQueries({
            queryKey: ["task", task.task_id],
          });
        },
      }
    );
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow
        type="flex"
        label="Task price"
        error={errors?.task_price_per_hour}
      >
        <Select
          {...register("task_price_per_hour", {
            required: "This field is required",
          })}
        >
          {taskPrice.map((price) => (
            <option key={price.label} value={price.value}>
              {price.label}
            </option>
          ))}
        </Select>
      </FormRow>

      <FormRow label="Client adresse" error={errors?.task_client_adresse}>
        <Textarea
          style={{ height: "10rem" }}
          type="textarea"
          {...register("task_client_adresse")}
          // disabled={loadingState}
        />
      </FormRow>

      <Row type="verticalnogap">
        <Label>Used time (h)</Label>
        {duration}
      </Row>

      <FormRow>
        <Button
          variation="primary"
          size="medium"
          // disabled={loadingState}
          active={null}
        >
          Add invoice
        </Button>
      </FormRow>
    </Form>
  );
};

export default NewTaskInvoice;
