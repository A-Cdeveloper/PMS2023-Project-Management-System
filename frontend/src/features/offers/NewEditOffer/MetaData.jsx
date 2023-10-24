import { Controller } from "react-hook-form";
import Select from "../../../ui/Form/Select";
import FormRow from "../../../ui/Form/FormRow";
import Input from "../../../ui/Form/Input";
import Textarea from "../../../ui/Form/Textarea";
import { SectionCaption, Section, SectionData } from "./SectionsStyles";

import {
  offerType,
  offerAllProjects,
  offerAllClients,
} from "../OffersParameters";

const MetaData = ({ errors, register, control, reset, isAddNewLoading }) => {
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
              disabled={isAddNewLoading}
            />
          </FormRow>

          <FormRow
            type="flex"
            label="Date"
            error={errors?.offer_date}
            errorposition="start"
          >
            <Controller
              disabled={isAddNewLoading}
              control={control}
              name="offer_date"
              rules={{ required: "This field is required" }}
              render={({ field }) => {
                const defDate = {
                  ...field,
                  value: field.value ? field.value.slice(0, -14) : "",
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
              defaultValue={offerType[1].value}
              disabled={isAddNewLoading}
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
              disabled={isAddNewLoading}
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
              disabled={isAddNewLoading}
              rules={{ required: "This field is required" }}
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
            errorposition="start"
          >
            <Controller
              control={control}
              name="offer_client_id"
              disabled={isAddNewLoading}
              rules={{ required: "This field is required" }}
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
              disabled={isAddNewLoading}
            />
          </FormRow>
        </SectionData>
      </Section>
    </>
  );
};

export default MetaData;
