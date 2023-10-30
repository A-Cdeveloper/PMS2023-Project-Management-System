import { useQueryClient } from "@tanstack/react-query";
import { HiOutlineArrowTopRightOnSquare } from "react-icons/hi2";

import { useClient } from "./useClient";
import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useProjectsByClient } from "../../hooks-api/useProjectsByClient";
import { useTasksByClient } from "../../hooks-api/useTasksByClient";

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
import { ClientProjects } from "./ClientProjects";
import { ClientTasks } from "./ClientTasks";

const ClientDetail = () => {
  const moveBack = useMoveBack();
  const { isLoading, error, client: clientSingle = {} } = useClient();
  const { projects: clientProjects } = useProjectsByClient();
  const { tasks: clientTasks } = useTasksByClient();
  const { clientId } = useParams();

  console.log(clientTasks);

  const queryClient = useQueryClient();
  const client = queryClient.getQueryData(["client", +clientId])
    ? queryClient.getQueryData(["client", +clientId])
    : clientSingle;

  const { client_name } = client;

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

      <Headline as="h2">Projects ({clientProjects.length})</Headline>
      <DataDetailsContainer>
        <ClientProjects clientProjects={clientProjects} />
      </DataDetailsContainer>

      <Headline as="h2">Tasks ({clientTasks.length})</Headline>
      <DataDetailsContainer>
        <ClientTasks clientTasks={clientTasks} />
      </DataDetailsContainer>
    </>
  );
};

export default ClientDetail;
