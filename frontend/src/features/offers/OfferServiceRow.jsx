import { useServicesList } from "../../hooks/useServicesList";

import styled from "styled-components";
import Table from "../../ui/Data/Table";

import { formatPrice } from "../../utils/helpers";
import { HiMinusCircle } from "react-icons/hi2";
import ButtonIcon from "../../ui/Buttons/ButtonIcon";

const ServiceName = styled.span`
  display: block;
  font-weight: 500;
  font-size: 1.5rem;
`;

const ServiceDesc = styled.div`
  white-space: pre-wrap;
  font-size: 1.3rem;
  opacity: 0.8;
`;

const RightDiv = styled.div`
  text-align: right;
  padding-right: 2.5rem;
`;
const CenterDiv = styled.div`
  text-align: center;
`;

const OfferServiceRow = ({ service, num, removeService }) => {
  const { service_id, qty_price_hour, qty_price_total } = service;
  const { serviceList } = useServicesList();

  const currentService = serviceList
    ? serviceList.filter((item) => item.service_id === service_id)[0]
    : {};

  const activeQuantity = qty_price_hour ? qty_price_hour : qty_price_total;
  const activePrice = currentService?.service_price_hour
    ? currentService?.service_price_hour
    : currentService?.service_price_total;

  //console.log(currentService);

  return (
    <Table.Row>
      <div>{num + 1}</div>
      <div>
        <ServiceName>{currentService?.service_name}</ServiceName>
        <ServiceDesc>{currentService?.service_description}</ServiceDesc>
      </div>
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
        <ButtonIcon
          icon={<HiMinusCircle />}
          onClick={() => removeService(service_id)}
        />
      )}
    </Table.Row>
  );
};

export default OfferServiceRow;
