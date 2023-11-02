import SelectComplex from "../../../ui/SelectComplex";
import Input from "../../../ui/Form/Input";
import { useEffect, useState } from "react";
import Table from "../../../ui/Data/Table";
import { SectionCaption, Section, SectionCol } from "./SectionsStyles";

import OfferServiceRow from "../OfferServiceRow";

import Button from "../../../ui/Buttons/Button";
import { formatPrice } from "../../../utils/helpers";

const ServicesData = ({ register, setVals, data, fullServicesList }) => {
  const [serviceId, setServiceId] = useState("");
  const [quantity, setQuantity] = useState(0);
  const [includedServices, setIncludedServices] = useState(
    data ? JSON.parse(data) : []
  );

  const basicServices =
    includedServices &&
    includedServices.filter((bservice) => bservice.service_type === "basic");

  const optionalServices =
    includedServices &&
    includedServices.filter((bservice) => bservice.service_type === "optional");

  const currentService = fullServicesList
    ? fullServicesList.filter((item) => item.value === serviceId)[0]
    : {};

  //console.log(currentService);

  const activePrice = currentService?.service_price_hour
    ? currentService?.service_price_hour
    : currentService?.service_price_total
    ? currentService?.service_price_total
    : 0;

  const totalPriceCalculator = includedServices.reduce((acc, cur) => {
    return cur.service_type === "basic" ? acc + cur.price : acc;
  }, 0);

  // console.log(totalPriceCalculator);

  useEffect(() => {
    register("services");
    register("offer_price");
    setVals("services", includedServices, { shouldDirty: true });
    setVals("offer_price", totalPriceCalculator, { shouldDirty: true });
  }, [includedServices, totalPriceCalculator]);

  const addNewServiceHandler = (e) => {
    e.preventDefault();

    if (quantity === 0) return;
    setIncludedServices((prevState) => {
      return [
        ...prevState,
        {
          service_id: serviceId,
          qty_price_hour: currentService?.service_price_hour ? +quantity : 0,
          qty_price_total: currentService?.service_price_total ? +quantity : 0,
          service_type: currentService?.service_type,
          price: quantity * +activePrice,
        },
      ];
    });

    setServiceId("");
    setQuantity(0);
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

      {basicServices && basicServices.length !== 0 && (
        <Table
          cols={["#", "Service", "Price/Hour", "Price/Item", "Qty", "Sum", ""]}
          columns="5rem 1fr 12rem 12rem 8rem 8rem 4rem"
        >
          <Table.Header />
          <Table.Body
            data={basicServices}
            renderItem={(serviceItem, index) => (
              <OfferServiceRow
                key={serviceItem.service_id}
                service={serviceItem}
                num={index}
                removeService={removeServiceHandler}
              />
            )}
          />
          <Table.Footer style={{ justifyContent: "end", paddingRight: "8rem" }}>
            Total price: {formatPrice(totalPriceCalculator)}
          </Table.Footer>
        </Table>
      )}
      {/* ************************************************ */}

      {/* ***************************************************************************** */}

      {optionalServices && optionalServices.length !== 0 && (
        <Table
          cols={["#", "Service", "Price/Hour", "Price/Item", "Qty", "Sum", ""]}
          columns="5rem 1fr 12rem 12rem 8rem 8rem 4rem"
        >
          <Table.Caption caption="Optional services" />
          <Table.Body
            data={optionalServices}
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
      )}
      {/* ************************************************ */}

      <Section>
        <SectionCol>
          <p>Service</p>
          <SelectComplex
            options={fullServicesList}
            value={serviceId}
            onChange={(e) => {
              setServiceId(+e.target.value);
            }}
          />
        </SectionCol>
        <SectionCol>
          <p>Price per hour</p>
          <div>
            {currentService?.service_price_hour
              ? formatPrice(currentService?.service_price_hour)
              : "-"}
          </div>
        </SectionCol>
        <SectionCol>
          <p>Price item</p>
          <div>
            {currentService?.service_price_total
              ? formatPrice(currentService?.service_price_total)
              : "-"}
          </div>
        </SectionCol>

        <SectionCol>
          <p>Qty</p>
          <Input
            type="number"
            value={quantity}
            onChange={(e) => {
              setQuantity(e.target.value);
            }}
          />
        </SectionCol>

        <SectionCol>
          <p>Sum</p>
          <div>{formatPrice(quantity * +activePrice)}</div>
        </SectionCol>
        <SectionCol style={{ justifyContent: "center" }}>
          <Button
            variation="danger"
            size="small"
            onClick={addNewServiceHandler}
          >
            Add new
          </Button>
        </SectionCol>
      </Section>
    </>
  );
};

export default ServicesData;
