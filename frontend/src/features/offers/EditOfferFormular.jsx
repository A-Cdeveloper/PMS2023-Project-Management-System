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

const EditOfferFormular = () => {
  const moveBack = useMoveBack();
  const accessToken = useAccessToken();
  const navigate = useNavigate();
  const { isAddNewLoading, addNewOffer } = useAddOffer();
  const { offer: offerSingle = {} } = useOffer();
  const { offerId } = useParams();

  const queryClient = useQueryClient();
  const offer = queryClient.getQueryData(["offer", +offerId])
    ? queryClient.getQueryData(["offer", +offerId])
    : offerSingle;

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
    console.log(data);
    // addNewOffer(
    //   {
    //     newOffer: {
    //       ...data,
    //       services: JSON.stringify(data.services),
    //     },
    //     accessToken,
    //   },
    //   {
    //     onSuccess: () => {
    //       navigate("/offers");
    //     },
    //   }
    // );
  };

  return (
    <>
      <Row>
        <Row type="horizontal">
          <Headline as="h1">Edit Offer</Headline>
          <ButtonText onClick={moveBack}> ← Back</ButtonText>
        </Row>

        <PromptModal formStatus={isDirty} />

        <Form onSubmit={handleSubmit(onSubmit)}>
          <MetaData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
            isAddNewLoading={isAddNewLoading}
            data={offer && offer}
          />

          <ServicesData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
            getVals={getValues}
            setVals={setValue}
            isAddNewLoading={isAddNewLoading}
            data={offer.services}
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

export default EditOfferFormular;
