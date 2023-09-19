import { useClient } from "./useClient";
import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";

import { useQueryClient } from "@tanstack/react-query";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Row from "../../ui/Row";
import styled from "styled-components";
import Spinner from "../../ui/Spinner";

const ClientDetailsBox = styled.div`
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  background: #fff;
  padding: 1rem;
`;

const ClientBox = styled.div`
  padding: 1rem 2rem;
  display: flex;
  flex: 70%;
  font-size: 1.5rem;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
`;
const ClientBoxTitle = styled(ClientBox)`
  padding: 1rem 2rem;
  display: flex;
  flex: 50%;
  background: ${(props) => props.theme.baseColors.grey200};
  font-weight: 600;
  flex: 30%;
  border-bottom: 1px solid #fff;
`;

const ClientDetail = () => {
  const moveBack = useMoveBack();
  //const { isLoading, error, client = {} } = useClient();
  const { clientId } = useParams();

  const queryClient = useQueryClient();
  const client = queryClient.getQueryData(["client", +clientId]);

  const {
    client_id,
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
  } = client;

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">{client_name}</Headline>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal" style={{ alignItems: "flex-start" }}>
        <ClientDetailsBox>
          <ClientBoxTitle>Adresse</ClientBoxTitle>
          <ClientBox>{client_adresse}</ClientBox>
          <ClientBoxTitle>Contact person</ClientBoxTitle>
          <ClientBox>{client_contact}</ClientBox>
        </ClientDetailsBox>

        <ClientDetailsBox>
          <ClientBoxTitle>Phone</ClientBoxTitle>
          <ClientBox>{client_phone}</ClientBox>
          <ClientBoxTitle>Fax</ClientBoxTitle>
          <ClientBox>{client_fax}</ClientBox>
          <ClientBoxTitle>E-Mail</ClientBoxTitle>
          <ClientBox>{client_email}</ClientBox>
          <ClientBoxTitle>Website</ClientBoxTitle>
          <ClientBox>{client_site}</ClientBox>
        </ClientDetailsBox>
      </Row>

      <Headline as="h2">Projects</Headline>
    </>
  );
};

export default ClientDetail;
