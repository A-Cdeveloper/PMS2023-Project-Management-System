import { useQueryClient } from "@tanstack/react-query";

import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useProject } from "./useProject";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Row from "../../ui/Row";
import Tag from "../../ui/Data/Tag";
import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";
import { projectHosting, projectPlatforms } from "./ProjectParameters";
import { formatDate } from "../../utils/helpers";

const ProjectDetail = () => {
  const moveBack = useMoveBack();
  const { isLoading, error, project: projectSingle = {} } = useProject();
  const { projectId } = useParams();

  const queryClient = useQueryClient();
  const project = queryClient.getQueryData(["project", +projectId])
    ? queryClient.getQueryData(["project", +projectId])
    : projectSingle;

  const {
    client_name,
    project_name,
    project_status,
    project_url,
    project_platform,
    project_hosting,
    project_description,
    project_access_data,
    project_start_date,
    project_end_date,
    project_update,
    project_last_update,
    project_online,
  } = project;

  return (
    <>
      <Row type="horizontal">
        <Row type="horizontal">
          <Headline as="h1">{project_name}</Headline>&nbsp;
          <Tag key={project_status} type={project_status}>
            {project_status}
          </Tag>
        </Row>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal">
        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Client</DataBoxTitle>
            <DataBoxContent>{client_name}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Url</DataBoxTitle>
            <DataBoxContent>
              <a href={project_url} target="_blank" title={project_url}>
                {project_url}
              </a>
            </DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Platform</DataBoxTitle>
            <DataBoxContent>
              {projectPlatforms().map((platform) => {
                return (
                  platform.value === project_platform && (
                    <span key={platform.label}>{platform.label}</span>
                  )
                );
              })}
            </DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Hosting</DataBoxTitle>
            <DataBoxContent>
              {projectHosting.map((hosting) => {
                return (
                  hosting.value === project_hosting && (
                    <span key={hosting.label}>{hosting.label}</span>
                  )
                );
              })}
            </DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Description</DataBoxTitle>
            <DataBoxContent>{project_description}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Access data</DataBoxTitle>
            <DataBoxContent>
              <a
                href={project_access_data}
                target="_blank"
                title={project_access_data}
              >
                {project_access_data}
              </a>
            </DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Start date</DataBoxTitle>
            <DataBoxContent>{formatDate(project_start_date)}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>End date</DataBoxTitle>
            <DataBoxContent>{formatDate(project_end_date)}</DataBoxContent>
          </DataBox>
        </DataDetailsContainer>

        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Portfolio</DataBoxTitle>
            <DataBoxContent>
              <>
                {project_online}
                <label class="switch">
                  <input type="checkbox" />
                  <span class="slider round"></span>
                </label>
              </>
            </DataBoxContent>
          </DataBox>
        </DataDetailsContainer>

        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Update period</DataBoxTitle>
            <DataBoxContent>{project_update}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Last update</DataBoxTitle>
            <DataBoxContent>{project_last_update}</DataBoxContent>
          </DataBox>
        </DataDetailsContainer>
      </Row>

      {/* <Headline as="h2">Tasks</Headline> */}
    </>
  );
};

export default ProjectDetail;
