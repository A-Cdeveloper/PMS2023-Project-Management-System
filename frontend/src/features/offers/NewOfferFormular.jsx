import { useNavigate } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useForm } from "react-hook-form";

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

const NewOfferFormular = () => {
  const moveBack = useMoveBack();
  const accessToken = useAccessToken();
  const navigate = useNavigate();
  const { isAddNewLoading, addNewOffer } = useAddOffer();

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
  };

  // console.log("RENDER formular");

  return (
    <>
      <Row>
        <Row type="horizontal">
          <Headline as="h1">New Offer</Headline>
          <ButtonText onClick={moveBack}> ← Back</ButtonText>
        </Row>

        <Form onSubmit={handleSubmit(onSubmit)}>
          <MetaData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
            isAddNewLoading={isAddNewLoading}
          />

          <ServicesData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
            getVals={getValues}
            setVals={setValue}
            isAddNewLoading={isAddNewLoading}
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

export default NewOfferFormular;
