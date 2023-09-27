import { useQueryClient } from "@tanstack/react-query";

import { useClient } from "./useClient";
import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Row from "../../ui/Row";
import DataDetailsContainer from "../../ui/Data/DataDetails";

import { clientCols } from "./ClientParameters";

const ClientDetail = () => {
  const moveBack = useMoveBack();
  const { isLoading, error, client: clientSingle = {} } = useClient();
  const { clientId } = useParams();

  const queryClient = useQueryClient();

  const client = queryClient.getQueryData(["client", +clientId])
    ? queryClient.getQueryData(["client", +clientId])
    : clientSingle;

  const {
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
  } = client;

  const obj = {};

  Object.values(client).map((element, index) => {
    obj[clientCols[index]] = element;
  });

  // Object.entries(client)((element, index) => {
  //   obj[element] = clientCols[index];
  // });

  // const data = [];

  console.log(obj);

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">{client_name}</Headline>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal" style={{ alignItems: "flex-start" }}>
        <DataDetailsContainer>
          {/* <DataBoxTitle>Adresse</DataBoxTitle>
          <DataBox>{client_adresse}</DataBox>
          <DataBoxTitle>Contact person</DataBoxTitle>
          <DataBox>{client_contact}</DataBox> */}
        </DataDetailsContainer>

        <DataDetailsContainer>
          {/* <DataBoxTitle>Phone</DataBoxTitle>
          <DataBox>{client_phone}</DataBox>
          <DataBoxTitle>Fax</DataBoxTitle>
          <DataBox>{client_fax}</DataBox>
          <DataBoxTitle>E-Mail</DataBoxTitle>
          <DataBox>{client_email}</DataBox>
          <DataBoxTitle>Website</DataBoxTitle>
          <DataBox>{client_site}</DataBox> */}
        </DataDetailsContainer>
      </Row>

      <Headline as="h2">Projects</Headline>
    </>
  );
};

export default ClientDetail;
