import { Controller } from "react-hook-form";
import styled from "styled-components";

import { useClientByProject } from "../../../hooks-api/useClientByProject";

import Select from "../../../ui/Form/Select";
import FormRow from "../../../ui/Form/FormRow";
import Input from "../../../ui/Form/Input";
import Textarea from "../../../ui/Form/Textarea";
import { SectionCaption, Section, SectionData } from "./SectionsStyles";
import { offerType } from "../OffersParameters";
import Row from "../../../ui/Row";
import { useEffect } from "react";

const Label = styled.label`
  font-weight: 500;
  font-size: 1.5rem;
`;

const MetaData = ({
  errors,
  register,
  control,
  reset,
  isLoading,
  setVals,
  watch,
  data = {},
  isEditing,
  fullProjectsList,
}) => {
  const {
    offer_number,
    offer_client_adresse,
    offer_project_id,
    offer_caption,
    offer_date,
    offer_notice,
  } = isEditing && data;

  const currentProjectId = watch("offer_project_id")
    ? watch("offer_project_id")
    : offer_project_id;

  /////////////// PROBLEM////////////

  const { client_name: clientName, project_client_id: clientId } =
    useClientByProject({
      project_id: currentProjectId && +currentProjectId,
    });

  register("offer_client_id");
  setVals("offer_client_id", clientId);

  return (
    <>
      <SectionCaption>Meta data</SectionCaption>
      <Section>
        <SectionData>
          <FormRow
            type="flex"
            label="Offer number"
            error={errors?.offer_number}
            errorposition="start"
          >
            <Input
              {...register("offer_number", {
                required: "This field is required",
              })}
              aria-invalid={errors.offer_number ? "true" : "false"}
              disabled={isLoading}
              defaultValue={offer_number}
            />
          </FormRow>

          <FormRow
            type="flex"
            label="Date"
            error={errors?.offer_date}
            errorposition="start"
          >
            <Controller
              disabled={isLoading}
              control={control}
              name="offer_date"
              rules={{ required: "This field is required" }}
              defaultValue={offer_date}
              render={({ field }) => {
                const defDate = {
                  ...field,
                  value: field.value
                    ? field.value.slice(0, -14)
                    : offer_date && offer_date.slice(0, -14),
                };
                return (
                  <Input
                    type="date"
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

          <FormRow
            type="flex"
            label="Type"
            error={errors?.offer_type}
            errorposition="start"
          >
            <Select
              {...register("offer_type", {
                required: "This field is required",
              })}
              disabled={isLoading}
            >
              {offerType.map((type, index) => {
                return index !== 0 ? (
                  <option
                    key={type.label}
                    value={type.value}
                    // selected={
                    //   offer_type && offer_type.toLowerCase() === type.value
                    // }
                  >
                    {type.label}
                  </option>
                ) : null;
              })}
            </Select>
          </FormRow>
        </SectionData>

        <SectionData>
          <FormRow
            type="flex"
            label="Caption"
            errorposition="start"
            error={errors?.offer_caption}
          >
            <Input
              {...register("offer_caption", {
                required: "This field is required",
              })}
              aria-invalid={errors.offer_caption ? "true" : "false"}
              disabled={isLoading}
              defaultValue={offer_caption}
            />
          </FormRow>

          <FormRow
            type="flex"
            label="Project"
            errorposition="start"
            error={errors?.offer_project_id}
          >
            <Controller
              control={control}
              name="offer_project_id"
              disabled={isLoading}
              rules={{ required: "This field is required" }}
              defaultValue={currentProjectId}
              render={({ field }) => {
                return (
                  <>
                    <Select
                      {...field}
                      onChange={(e) => {
                        return field.onChange(e.target.value);
                      }}
                    >
                      {fullProjectsList.map((project) => (
                        <option key={project.value} value={project.value}>
                          {project.label}
                        </option>
                      ))}
                    </Select>
                  </>
                );
              }}
            />
          </FormRow>

          <Row type="verticalnogap">
            <Label>Client</Label>
            {clientName}
          </Row>

          <FormRow
            type="flex"
            label="Real client address"
            error={errors?.offer_client_adresse}
          >
            <Textarea
              type="textarea"
              style={{ height: "10rem" }}
              {...register("offer_client_adresse")}
              aria-invalid={errors.offer_client_adresse ? "true" : "false"}
              disabled={isLoading}
              defaultValue={offer_client_adresse}
            />
          </FormRow>
        </SectionData>
        <SectionData>
          <FormRow type="flex" label="Notice" error={errors?.offer_notice}>
            <Textarea
              style={{ height: "10rem" }}
              type="textarea"
              {...register("offer_notice")}
              disabled={isLoading}
              defaultValue={offer_notice}
            />
          </FormRow>
        </SectionData>
      </Section>
    </>
  );
};

export default MetaData;
