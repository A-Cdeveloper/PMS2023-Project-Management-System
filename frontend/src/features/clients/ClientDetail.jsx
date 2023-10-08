import { useQueryClient } from "@tanstack/react-query";

import { useClient } from "./useClient";
import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Row from "../../ui/Row";
import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";

import { clientCols } from "./ClientParameters";
import { HiOutlineArrowTopRightOnSquare } from "react-icons/hi2";
import ProjectsTable from "../projects/ProjectsTable";

const ClientDetail = () => {
  const moveBack = useMoveBack();
  const { isLoading, error, client: clientSingle = {} } = useClient();
  const { clientId } = useParams();

  const queryClient = useQueryClient();
  const client = queryClient.getQueryData(["client", +clientId])
    ? queryClient.getQueryData(["client", +clientId])
    : clientSingle;

  // console.log(clientSingle);

  const {
    client_id,
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
    project_per_client,
  } = client;

  const content = Object.values(client).map((element, index) => {
    if (index > 1) {
      return (
        <DataBox key={index}>
          <DataBoxTitle>{clientCols[index - 1]}</DataBoxTitle>
          <DataBoxContent>
            {element}
            {clientCols[index - 1] === "Email" && (
              <a href={`mailto:${element}`}>
                <HiOutlineArrowTopRightOnSquare />
              </a>
            )}
            {clientCols[index - 1] === "URL" && (
              <a href={element} target="_blank" title={element}>
                <HiOutlineArrowTopRightOnSquare />
              </a>
            )}
          </DataBoxContent>
        </DataBox>
      );
    }
  });

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">{client_name}</Headline>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal">
        <DataDetailsContainer>{content}</DataDetailsContainer>
      </Row>

      <Headline as="h2">Projects</Headline>
      {/* <ProjectsTable /> */}
    </>
  );
};

export default ClientDetail;
