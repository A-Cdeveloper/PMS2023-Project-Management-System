import styled from "styled-components";
import Table from "../../ui/Data/Table";
import { allServices } from "./OffersParameters";
import { formatPrice } from "../../utils/helpers";
import { HiMinusCircle } from "react-icons/hi2";
import ButtonIconText from "../../ui/Buttons/ButtonIconText";

const RightDiv = styled.div`
  text-align: right;
  padding-right: 2.5rem;
`;
const CenterDiv = styled.div`
  text-align: center;
`;

const OfferServiceRow = ({ service, num, removeService }) => {
  const { service_id, qty_price_hour, qty_price_total } = service;

  const currentService = allServices()
    ? allServices().filter((item) => item.service_id === service_id)[0]
    : {};

  const activeQuantity = qty_price_hour ? qty_price_hour : qty_price_total;
  const activePrice = currentService?.service_price_hour
    ? currentService?.service_price_hour
    : currentService?.service_price_total;

  return (
    <Table.Row>
      <div>{num + 1}</div>
      <div>{currentService?.service_name}</div>
      <RightDiv>
        {currentService?.service_price_hour
          ? formatPrice(currentService?.service_price_hour)
          : "-"}
      </RightDiv>
      <RightDiv>
        {currentService?.service_price_total
          ? formatPrice(currentService?.service_price_total)
          : "-"}
      </RightDiv>
      <CenterDiv>{qty_price_hour ? qty_price_hour : qty_price_total}</CenterDiv>

      <RightDiv>{formatPrice(activeQuantity * +activePrice)}</RightDiv>
      {removeService && (
        <ButtonIconText
          icon={<HiMinusCircle />}
          onClick={() => removeService(service_id)}
        />
      )}
    </Table.Row>
  );
};

export default OfferServiceRow;
