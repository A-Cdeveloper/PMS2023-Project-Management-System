// import { Controller } from "react-hook-form";
import SelectComplex from "../../../ui/SelectComplex";
import FormRow from "../../../ui/Form/FormRow";
import Input from "../../../ui/Form/Input";
import { useEffect, useState } from "react";
import Table from "../../../ui/Data/Table";
import { SectionCaption, Section, SectionData } from "./SectionsStyles";

import OfferServiceRow from "../OfferServiceRow";

import { offerAllServices } from "../OffersParameters";
import Button from "../../../ui/Buttons/Button";
import Row from "../../../ui/Row";
import { formatPrice } from "../../../utils/helpers";

const ServicesData = ({
  errors,
  register,
  control,
  reset,
  getVals,
  setVals,
}) => {
  const [serviceId, setServiceId] = useState("");
  const [quantityPerHour, setQuantityPerHour] = useState(0);
  const [includedServices, setIncludedServices] = useState([]);

  const currentService = offerAllServices()
    ? offerAllServices().filter((item) => item.value === serviceId)[0]
    : {};

  console.log(includedServices);

  useEffect(() => {
    register("services");
    setVals("services", includedServices);
  }, [register, setVals, includedServices]);

  const addNewServiceHandler = (e) => {
    e.preventDefault();
    // console.log({
    //   service_id: service.service_id,
    //   service_qty_hour: +quantityPerHour,
    //   service_qty_total: 0,
    // });
    setIncludedServices((prevState) => {
      return [
        ...prevState,
        {
          service_id: serviceId,
          qty_price_hour: +quantityPerHour,
          qty_price_total: 0,
        },
      ];
    });
    setServiceId("");
    setQuantityPerHour(0);
  };

  const removeServiceHandler = (id) => {
    setIncludedServices((prevState) => {
      return prevState.filter((item) => item.service_id !== id);
    });
  };

  return (
    <>
      <SectionCaption>Service data</SectionCaption>

      {/* ***************************************************************************** */}

      <Table
        cols={["#", "Service", "Price/Hour", "PriceTotal", "Qty", "Sum", ""]}
        columns="5rem 1fr 12rem 12rem 8rem 8rem 4rem"
      >
        <Table.Header />
        <Table.Body
          data={includedServices}
          renderItem={(serviceItem, index) => (
            <OfferServiceRow
              key={serviceItem.service_id}
              service={serviceItem}
              num={index}
              removeService={removeServiceHandler}
            />
          )}
        />
      </Table>

      {/* ************************************************ */}

      <Section>
        <Row type="horizontal">
          <SelectComplex
            options={offerAllServices()}
            value={serviceId}
            onChange={(e) => {
              setServiceId(+e.target.value);
            }}
          />

          <div>
            {currentService?.service_price_hour
              ? formatPrice(currentService?.service_price_hour)
              : "-"}
          </div>

          <div>
            {currentService?.service_price_total
              ? formatPrice(currentService?.service_price_total)
              : "-"}
          </div>

          <Input
            type="number"
            value={quantityPerHour}
            onChange={(e) => {
              setQuantityPerHour(e.target.value);
            }}
          />
          <div>
            {formatPrice(quantityPerHour * +currentService?.service_price_hour)}
          </div>
          <Button variation="info" size="small" onClick={addNewServiceHandler}>
            Add new
          </Button>
        </Row>
      </Section>
    </>
  );
};

export default ServicesData;
