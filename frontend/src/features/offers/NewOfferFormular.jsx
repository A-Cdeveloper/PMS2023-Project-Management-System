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
  } = useForm();

  const onSubmit = (data) => {
    const newOffer = {
      ...data,
      services: [
        { sid: 1, qty1: 2, qty2: 0 },
        { sid: 3, qty1: 8, qty2: 0 },
      ],
    };
    console.log(newOffer);
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
          <MetaData
            errors={errors}
            register={register}
            control={control}
            reset={reset}
          />
          {/* <SectionCaption>Service data</SectionCaption>{" "}
          <SectionData>
            <FormRow>
              <Button
                variation="primary"
                size="medium"
                disabled={false}
                active={null}
              >
                Save
              </Button>
              #generatePDF #DELETE #SEND TO CLIENT
            </FormRow>
            <FormRow></FormRow>
          </SectionData> */}
          <ButtonGroup>
            <Button
              variation="primary"
              size="medium"
              disabled={false}
              active={null}
            >
              Save
            </Button>
            <Button
              variation="primary"
              size="medium"
              disabled={false}
              active={null}
            >
              generatePDF
            </Button>
          </ButtonGroup>
        </Form>
      </Row>
    </>
  );
};

export default NewOfferFormular;
