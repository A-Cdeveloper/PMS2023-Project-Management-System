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
import Accordion from "../../ui/Data/Accordion";
import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";
import Empty from "../../ui/Data/Empty";
import Spinner from "../../ui/Spinner";

import { clientCols } from "./ClientParameters";
import { ClientProjects } from "./ClientProjects";
import { ClientTasks } from "./ClientTasks";

const ClientDetail = () => {
  const moveBack = useMoveBack();
  const { isLoading, error, client: clientSingle = {} } = useClient();
  const { error: errorClientProjects, projects: clientProjects } =
    useProjectsByClient();
  const { error: errorClientTasks, tasks: clientTasks } = useTasksByClient();
  const { clientId } = useParams();

  // console.log(clientTasks);

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

  if (isLoading) return <Spinner />;

  if (error) {
    return (
      <Row type="horizontal">
        <Headline as="h1">{error.message}</Headline>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
    );
  }

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">{client_name}</Headline>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal">
        <DataDetailsContainer>{content}</DataDetailsContainer>
      </Row>

      <DataDetailsContainer>
        <Accordion>
          <Accordion.Item>
            <Accordion.Caption index={0}>
              Projects ({clientProjects.length})
            </Accordion.Caption>
            <Accordion.Content index={0}>
              {errorClientProjects || clientProjects.length === 0 ? (
                <Empty resource="projects" />
              ) : (
                <ClientProjects clientProjects={clientProjects} />
              )}
            </Accordion.Content>
          </Accordion.Item>

          <Accordion.Item>
            <Accordion.Caption index={1}>
              Tasks ({clientTasks.length})
            </Accordion.Caption>

            <Accordion.Content index={1}>
              {errorClientTasks || clientTasks.length === 0 ? (
                <Empty resource="tasks" />
              ) : (
                <ClientTasks clientTasks={clientTasks} />
              )}
            </Accordion.Content>
          </Accordion.Item>
        </Accordion>
      </DataDetailsContainer>
    </>
  );
};

export default ClientDetail;
