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
import { useAccessToken } from "../../context/authContext";
import { usePricesPerHourDropDown } from "../../hooks-api/usePricesPerHourDropDown";

const Label = styled.label`
  font-weight: 500;
  font-size: 1.5rem;
  margin-top: 1rem;
`;

const NewTaskInvoice = ({ task, duration }) => {
  const { settings = {} } = useSettings();
  const { isEditLoading, editTask } = useEditTask();
  const { pricePerHourList } = usePricesPerHourDropDown();
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
      <Row type="horizontal" style={{ alignItems: "start" }}>
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
            {pricePerHourList.map((price) => (
              <option key={price.label} value={price.value}>
                {price.label}
              </option>
            ))}
          </Select>
        </FormRow>

        <FormRow
          type="flex"
          label="Client adresse"
          error={errors?.task_client_adresse}
        >
          <Textarea
            style={{ height: "10rem" }}
            type="textarea"
            defaultValue={task?.task_client_adresse}
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
      </Row>
    </Form>
  );
};

export default NewTaskInvoice;
