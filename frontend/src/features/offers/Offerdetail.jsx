import { useQueryClient } from "@tanstack/react-query";

import { useParams, useNavigate } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useOffer } from "./useOffer";
import { formatDate, formatPrice } from "../../utils/helpers";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Button from "../../ui/Buttons/Button";
import Row from "../../ui/Row";

import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";
import styled, { css } from "styled-components";
import Table from "../../ui/Data/Table";
import OfferServiceRow from "./OfferServiceRow";

const ClientAdr = styled.div`
  flex-direction: column;
  ${(props) =>
    props.type === "inactive" &&
    css`
      text-decoration: line-through;
    `}
`;

const Notice = styled.div`
  white-space: pre-wrap;
  font-size: 1.3rem;
  opacity: 0.8;
`;

const TotalPrice = styled.div`
  text-align: right;
  padding: 2rem 3.5rem;
  font-weight: ${(props) => props.theme.fontWeight.semibold};
`;

const Offerdetail = () => {
  const moveBack = useMoveBack();
  const { offer: offerSingle = {} } = useOffer();
  const { offerId } = useParams();
  const navigate = useNavigate();

  const queryClient = useQueryClient();
  const offer = queryClient.getQueryData(["offer", +offerId])
    ? queryClient.getQueryData(["offer", +offerId])
    : offerSingle;

  const {
    offer_id,
    offer_number,
    offer_client_id,
    client_name,
    client_adresse: default_client_addresse,
    offer_client_adresse,
    offer_project_id,
    project_name,
    offer_type,
    offer_caption,
    offer_date,
    offer_notice,
    offer_price,
    services,
  } = offer;

  const includedServices = services && JSON.parse(services);

  return (
    <>
      <Row type="horizontal">
        <Row type="horizontal">
          <Headline as="h1">
            #{offer_number} · {offer_caption}
          </Headline>
          &nbsp;&nbsp;
        </Row>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal">
        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Offer type</DataBoxTitle>
            <DataBoxContent>{offer_type}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Date</DataBoxTitle>
            <DataBoxContent>{formatDate(offer_date)}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Project</DataBoxTitle>
            <DataBoxContent>{project_name}</DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>Client</DataBoxTitle>
            <DataBoxContent>
              <ClientAdr type={offer_client_adresse ? "inactive" : null}>
                {client_name}
                <br />
                {default_client_addresse}
              </ClientAdr>
            </DataBoxContent>
          </DataBox>

          {offer_client_adresse && (
            <DataBox>
              <DataBoxTitle>Real Client address</DataBoxTitle>
              <DataBoxContent>{offer_client_adresse}</DataBoxContent>
            </DataBox>
          )}
        </DataDetailsContainer>

        <DataDetailsContainer>
          <Table
            cols={["#", "Service", "Price/Hour", "Price/Item", "Qty", "Sum"]}
            columns="5rem 1fr 12rem 12rem 8rem 8rem"
          >
            <Table.Header />
            <Table.Body
              data={includedServices}
              renderItem={(service, index) => (
                <OfferServiceRow
                  key={service.service_id}
                  service={service}
                  num={index}
                />
              )}
            />
          </Table>
        </DataDetailsContainer>

        <DataDetailsContainer>
          {offer_notice && (
            <>
              <DataBoxContent>Notice:</DataBoxContent>
              <DataBoxContent>
                <Notice>{offer_notice}</Notice>
              </DataBoxContent>
            </>
          )}
        </DataDetailsContainer>

        <DataDetailsContainer>
          <TotalPrice>Total price: {formatPrice(offer_price)}</TotalPrice>
          <Button
            variation="primary"
            size="medium"
            onClick={() => navigate(`/offers/pdf/${offer_id}`)}
          >
            View PDF
          </Button>
        </DataDetailsContainer>
      </Row>

      {/* <Headline as="h2">Tasks</Headline> */}
    </>
  );
};

export default Offerdetail;
