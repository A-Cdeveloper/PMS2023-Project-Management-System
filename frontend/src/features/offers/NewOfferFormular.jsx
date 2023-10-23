import { useQueryClient } from "@tanstack/react-query";
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

const NewOfferFormular = () => {
  const moveBack = useMoveBack();
  const accessToken = useAccessToken();

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
    console.log(data);
  };

  //console.log(project);

  return (
    <>
      <Row>
        <Row type="horizontal">
          <Headline as="h1">New Offer</Headline>
          <ButtonText onClick={moveBack}> ← Back</ButtonText>
        </Row>

        <Form onSubmit={handleSubmit(onSubmit)}>
          {/* <MetaData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
          /> */}

          <ServicesData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
            getVals={getValues}
            setVals={setValue}
          />

          <ButtonGroup>
            <Button
              variation="primary"
              size="medium"
              disabled={false}
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
