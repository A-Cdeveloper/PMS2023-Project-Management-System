import { useQueryClient } from "@tanstack/react-query";

import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Row from "../../ui/Row";
import styled from "styled-components";
import Tag from "../../ui/Data/Tag";
import { useProject } from "./useProject";

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

const ProjectDetail = () => {
  const moveBack = useMoveBack();
  const { isLoading, error, project: projectSingle = {} } = useProject();
  const { projectId } = useParams();

  const queryClient = useQueryClient();
  const project = queryClient.getQueryData(["project", +projectId])
    ? queryClient.getQueryData(["project", +projectId])
    : projectSingle;

  const { project_id, project_name, project_status } = project;

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">{project_name}</Headline>
        <Tag key={project_status} type={project_status}>
          {project_status}
        </Tag>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      {/* <Row type="horizontal" style={{ alignItems: "flex-start" }}>
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
      </Row>*/}

      <Headline as="h2">Tasks</Headline>
    </>
  );
};

export default ProjectDetail;
