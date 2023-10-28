import { useNavigate, useParams } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { useForm } from "react-hook-form";

import { useMoveBack } from "../frontend/src/hooks/useMoveBack";
import { useAccessToken } from "../frontend/src/context/authContext";

import Headline from "../frontend/src/ui/Headline";
import ButtonText from "../frontend/src/ui/Buttons/ButtonText";
import ButtonGroup from "../frontend/src/ui/Buttons/ButtonGroup";
import Button from "../frontend/src/ui/Buttons/Button";
import Row from "../frontend/src/ui/Row";
import Form from "../frontend/src/ui/Form/Form";

import MetaData from "../frontend/src/features/offers/NewEditOffer/MetaData";
import ServicesData from "../frontend/src/features/offers/NewEditOffer/ServicesData";
import useAddOffer from "../frontend/src/features/offers/useAddOffer";
import PromptModal from "../frontend/src/ui/PromptModal";
import { useOffer } from "../frontend/src/features/offers/useOffer";

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
            register={register}
            setVals={setValue}
            data={offer && offer.services}
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
