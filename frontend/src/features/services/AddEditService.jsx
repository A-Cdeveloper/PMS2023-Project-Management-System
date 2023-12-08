import { useForm } from "react-hook-form";
import useAddService from "./useAddService";
import useEditService from "./useEditService";
import { useAccessToken } from "../../context/authContext";

import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import Textarea from "../../ui/Form/Textarea";
import Button from "../../ui/Buttons/Button";
import Spinner from "../../ui/Spinner";

import { serviceType } from "./ServiceParameters";
import Select from "../../ui/Form/Select";

const AddEditService = ({ serviceToEdit = {}, onCloseModal }) => {
  const { isAddNewLoading, addNewService } = useAddService();
  const { isEditLoading, editService } = useEditService();
  const accessToken = useAccessToken();

  const isEdit = !!serviceToEdit.service_id;
  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm({ defaultValues: isEdit ? serviceToEdit : {} });

  const loadingState = isAddNewLoading || isEditLoading;

  const onSubmit = (data) => {
    console.log(data);
    // if (isEdit) {
    //   editService(
    //     {
    //       service_id: serviceToEdit.service_id,
    //       updatedService: data,
    //       accessToken,
    //     },
    //     {
    //       onSuccess: () => {
    //         onCloseModal();
    //       },
    //     }
    //   );
    //   // console.log(data);
    // } else {
    //   addNewService(
    //     { newService: data, accessToken },
    //     {
    //       onSuccess: () => {
    //         onCloseModal();
    //       },
    //     }
    //   );
    // }
  };

  return (
    <Form onSubmit={handleSubmit(onSubmit)}>
      <FormRow label="Service" error={errors?.service_name}>
        <Input
          {...register("service_name", { required: "This field is required" })}
          aria-invalid={errors.service_name ? "true" : "false"}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Description">
        <Textarea
          type="textarea"
          {...register("service_description")}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Price per hour" error={errors?.service_price_hour}>
        <Input
          type="number"
          {...register("service_price_hour", {
            min: {
              value: 15,
              message: "Price must be a minimum 15.00 €",
            },
          })}
          aria-invalid={errors.service_price_hour ? "true" : "false"}
          disabled={loadingState}
        />
      </FormRow>
      <FormRow label="Price per item" error={errors?.service_price_total}>
        <Input
          type="number"
          {...register("service_price_total")}
          aria-invalid={errors.service_price_total ? "true" : "false"}
          disabled={loadingState}
        />
      </FormRow>

      <FormRow label="Type" error={errors?.service_type}>
        <Select
          {...register("service_type", {
            required: "This field is required",
          })}
          defaultValue={!isEdit && serviceType[1].value}
          disabled={loadingState}
        >
          {serviceType.map((type, index) => {
            return index !== 0 ? (
              <option key={type.label} value={type.value}>
                {type.label}
              </option>
            ) : null;
          })}
        </Select>
      </FormRow>

      <FormRow>
        <Button
          variation="primary"
          size="medium"
          active={null}
          disabled={loadingState}
        >
          {isEdit ? "Submit Changes" : "Add new service"}
        </Button>
      </FormRow>
    </Form>
  );
};

export default AddEditService;
