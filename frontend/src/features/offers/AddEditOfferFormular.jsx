import { useNavigate, useParams } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { useForm } from "react-hook-form";

import { useMoveBack } from "../../hooks/useMoveBack";
import { useAccessToken } from "../../context/authContext";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import ButtonGroup from "../../ui/Buttons/ButtonGroup";
import Button from "../../ui/Buttons/Button";
import Row from "../../ui/Row";
import Form from "../../ui/Form/Form";

import MetaData from "./NewEditOffer/MetaData";
import ServicesData from "./NewEditOffer/ServicesData";
import useAddOffer from "./useAddOffer";
import PromptModal from "../../ui/PromptModal";

import { useOffer } from "./useOffer";
import useEditOffer from "./useEditOffer";
import { useProjectsDropDown } from "../../hooks-api/useProjectsDropDown";
import { useServicesDropDown } from "../../hooks-api/useServicesDropDown";

const AddEditOfferFormular = ({ isEditing }) => {
  const moveBack = useMoveBack();
  const accessToken = useAccessToken();
  const navigate = useNavigate();

  const { fullProjectsList } = useProjectsDropDown();
  const { fullServicesList } = useServicesDropDown();

  const { isAddNewLoading, addNewOffer } = useAddOffer();
  const { isEditLoading, editOffer } = useEditOffer();

  let offer;

  if (isEditing) {
    const { offer: offerSingle = {} } = useOffer();
    const { offerId } = useParams();

    const queryClient = useQueryClient();
    offer = queryClient.getQueryData(["offer", +offerId])
      ? queryClient.getQueryData(["offer", +offerId])
      : offerSingle;
  }

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors, isDirty },
    control,
    reset,
    getValues,
    setValue,
  } = useForm();

  const onSubmit = (data) => {
    //console.log(data);
    if (isEditing) {
      //console.log(data);
      // console.log(offer.offer_id);
      // console.log(JSON.stringify(data.services));
      editOffer(
        {
          offer_id: offer.offer_id,
          updatedOffer: {
            ...data,
            services: JSON.stringify(data.services),
          },
          accessToken,
        },
        {
          onSuccess: () => {
            navigate("/offers");
          },
        }
      );
    } else {
      addNewOffer(
        {
          newOffer: {
            ...data,
            services: JSON.stringify(data.services),
          },
          accessToken,
        },
        {
          onSuccess: () => {
            navigate("/offers");
          },
        }
      );
    }
  };

  return (
    <>
      <Row>
        <Row type="horizontal">
          <Headline as="h1">{isEditing ? "Edit" : "Add"} Offer</Headline>
          <ButtonText onClick={moveBack}> ← Back</ButtonText>
        </Row>

        <PromptModal
          formStatus={isDirty && !isAddNewLoading && !isEditLoading}
        />

        <Form onSubmit={handleSubmit(onSubmit)}>
          <MetaData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
            setVals={setValue}
            watch={watch}
            isLoading={isEditing ? isEditLoading : isAddNewLoading}
            data={isEditing ? offer : null}
            isEditing={!!isEditing}
            fullProjectsList={fullProjectsList}
          />

          <ServicesData
            register={register}
            setVals={setValue}
            data={isEditing && offer.services}
            fullServicesList={fullServicesList}
          />

          <ButtonGroup>
            <Button
              variation="primary"
              size="medium"
              disabled={isAddNewLoading}
              active={null}
            >
              Save
            </Button>
          </ButtonGroup>
        </Form>
      </Row>
    </>
  );
};

export default AddEditOfferFormular;
