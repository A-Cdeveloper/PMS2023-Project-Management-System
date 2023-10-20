import { useQueryClient } from "@tanstack/react-query";
import { useMoveBack } from "../../hooks/useMoveBack";
import { Controller, useForm } from "react-hook-form";

import { formatDate } from "../../utils/helpers";
import { useAccessToken } from "../../context/authContext";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Button from "../../ui/Buttons/Button";
import Row from "../../ui/Row";
import Switch from "../../ui/Form/Switch";
import Select from "../../ui/Form/Select";
import Form from "../../ui/Form/Form";
import FormRow from "../../ui/Form/FormRow";
import Input from "../../ui/Form/Input";
import styled from "styled-components";

import {
  offerType,
  offerAllProjects,
  offerAllClients,
} from "./OffersParameters";
import Textarea from "../../ui/Form/Textarea";

const SectionCaption = styled.div`
  width: 100%;
  background-color: ${(props) => props.theme.baseColors.grey300};
  padding: 1rem 2rem;
  font-weight: ${(props) => props.theme.fontWeight.bold};
  font-size: 1.6rem;
`;
const Section = styled.div`
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 2rem;
  padding: 2rem 0;
`;
const SectionData = styled.div`
  background: #fff;
  padding: 2rem;
  flex-grow: 1;
  box-shadow: ${(props) => props.theme.shadow.xs};
`;

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
          <SectionCaption>Meta data</SectionCaption>
          <Section>
            <SectionData>
              <FormRow
                type="flex"
                label="Offer number"
                error={errors?.offer_number}
              >
                <Input
                  {...register("offer_number", {
                    required: "This field is required",
                  })}
                  aria-invalid={errors.offer_number ? "true" : "false"}
                  disabled={false}
                />
              </FormRow>

              <FormRow type="flex" label="Date" error={errors?.offer_date}>
                <Controller
                  disabled={false}
                  control={control}
                  name="offer_date"
                  render={({ field }) => {
                    const defDate = {
                      ...field,
                      value: field.value
                        ? field.value.slice(0, -14)
                        : new Date(new Date()).toISOString().slice(0, -14),
                    };
                    return (
                      <Input
                        type="date"
                        min={new Date(new Date()).toISOString().slice(0, -14)}
                        {...defDate}
                        aria-invalid={errors.offer_date ? "true" : "false"}
                        onChange={(e) => {
                          if (e.target.value === "") {
                            reset({
                              offer_date: "",
                            });
                            return;
                          }

                          return field.onChange(
                            new Date(e.target.value).toISOString()
                          );
                        }}
                      />
                    );
                  }}
                />
              </FormRow>

              <FormRow type="flex" label="Type" error={errors?.offer_type}>
                <Select
                  {...register("offer_type", {
                    required: "This field is required",
                  })}
                  defaultValue={offerType[1].value}
                  disabled={false}
                >
                  {offerType.map((type, index) => {
                    return index !== 0 ? (
                      <option key={type.label} value={type.value}>
                        {type.label}
                      </option>
                    ) : null;
                  })}
                </Select>
              </FormRow>

              <FormRow></FormRow>
            </SectionData>
            <SectionData>
              <FormRow type="flex" label="Caption" error={errors?.offer_extra}>
                <Input
                  {...register("offer_extra", {
                    required: "This field is required",
                  })}
                  aria-invalid={errors.offer_extra ? "true" : "false"}
                  disabled={false}
                />
              </FormRow>
              <FormRow
                type="flex"
                label="Project"
                error={errors?.offer_project_id}
              >
                <Controller
                  control={control}
                  name="offer_project_id"
                  disabled={false}
                  required="This field is required"
                  render={({ field }) => {
                    return (
                      <Select
                        {...field}
                        onChange={(e) => {
                          return field.onChange(e.target.value);
                        }}
                      >
                        {offerAllProjects().map((project) => (
                          <option key={project.value} value={project.value}>
                            {project.label}
                          </option>
                        ))}
                      </Select>
                    );
                  }}
                />
              </FormRow>
              <FormRow
                type="flex"
                label="Client"
                error={errors?.offer_client_id}
              >
                <Controller
                  control={control}
                  name="offer_client_id"
                  disabled={false}
                  required="This field is required"
                  render={({ field }) => {
                    return (
                      <Select
                        {...field}
                        onChange={(e) => {
                          return field.onChange(e.target.value);
                        }}
                      >
                        {offerAllClients().map((client) => (
                          <option key={client.value} value={client.value}>
                            {client.label}
                          </option>
                        ))}
                      </Select>
                    );
                  }}
                />
              </FormRow>
              <FormRow
                type="flex"
                label="Other client address"
                error={errors?.offer_client_adresse}
              >
                <Textarea
                  type="textarea"
                  {...register("offer_client_adresse")}
                  aria-invalid={errors.offer_client_adresse ? "true" : "false"}
                  disabled={false}
                />
              </FormRow>
              <FormRow></FormRow>
            </SectionData>
          </Section>
          <SectionCaption>Service data</SectionCaption>{" "}
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
          </SectionData>
        </Form>
      </Row>
    </>
  );
};

export default NewOfferFormular;
