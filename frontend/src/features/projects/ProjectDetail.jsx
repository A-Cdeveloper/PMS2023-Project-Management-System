import { useQueryClient } from "@tanstack/react-query";

import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useProject } from "./useProject";
import { formatDate } from "../../utils/helpers";
import { useAccessToken } from "../../context/authContext";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Button from "../../ui/Buttons/Button";
import Row from "../../ui/Row";
import Tag from "../../ui/Data/Tag";
import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";
import {
  projectHosting,
  projectPlatforms,
  projectStatus,
  projectUpdateStatus,
} from "./ProjectParameters";
import Switch from "../../ui/Form/Switch";
import Select from "../../ui/Form/Select";
import useEditProject from "./useEditProject";
import Input from "../../ui/Form/Input";
import ButtonGroup from "../../ui/Buttons/ButtonGroup";
import { HiOutlineArrowTopRightOnSquare } from "react-icons/hi2";

const ProjectDetail = () => {
  const moveBack = useMoveBack();
  const { project: projectSingle = {} } = useProject();
  const { isEditLoading, editProject } = useEditProject();
  const { projectId } = useParams();
  const accessToken = useAccessToken();

  const queryClient = useQueryClient();
  const project = queryClient.getQueryData(["project", +projectId])
    ? queryClient.getQueryData(["project", +projectId])
    : projectSingle;

  const {
    client_name,
    project_id,
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
    task_per_project,
  } = project;

  //console.log(project);

  return (
    <>
      <Row type="horizontal">
        <Row type="horizontal">
          <Headline as="h1">{project_name}</Headline>&nbsp;&nbsp;
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
              {project_url && (
                <>
                  {project_url}
                  <a href={project_url} target="_blank" title={project_url}>
                    <HiOutlineArrowTopRightOnSquare />
                  </a>
                </>
              )}
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
              {project_access_data && (
                <>
                  {project_access_data}
                  <a
                    href={project_access_data}
                    target="_blank"
                    title={project_access_data}
                  >
                    <HiOutlineArrowTopRightOnSquare />
                  </a>
                </>
              )}
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
          <DataBox>
            <DataBoxTitle>Tasks</DataBoxTitle>
            <DataBoxContent>{task_per_project}</DataBoxContent>
          </DataBox>
        </DataDetailsContainer>

        {project_status === "online" && (
          <DataDetailsContainer>
            <DataBox>
              <DataBoxTitle>Portfolio</DataBoxTitle>
              <DataBoxContent>
                <>
                  <Switch
                    checked={project_online === "Ja"}
                    onChange={(e) =>
                      editProject(
                        {
                          project_id: project_id,
                          updatedProject: {
                            ...project,
                            project_online: e.target.checked ? "Ja" : "",
                          },
                          accessToken,
                        },
                        {
                          onSettled: () => {
                            queryClient.invalidateQueries({
                              queryKey: ["project", project_id],
                            });
                          },
                        }
                      )
                    }
                  />
                </>
              </DataBoxContent>
            </DataBox>
          </DataDetailsContainer>
        )}

        {project_status === "online" && (
          <DataDetailsContainer>
            <DataBox>
              <DataBoxTitle>Update period</DataBoxTitle>
              <DataBoxContent>
                <>
                  <Select
                    defaultValue={project_update}
                    onChange={(e) =>
                      editProject(
                        {
                          project_id: project_id,
                          updatedProject: {
                            ...project,
                            project_update: e.target.value,
                          },
                          accessToken,
                        },
                        {
                          onSettled: () => {
                            queryClient.invalidateQueries({
                              queryKey: ["project", project_id],
                            });
                          },
                        }
                      )
                    }
                    disabled={isEditLoading}
                  >
                    {projectUpdateStatus.map((status) => (
                      <option key={status.label} value={status.value}>
                        {status.label}
                      </option>
                    ))}
                  </Select>
                </>
              </DataBoxContent>
            </DataBox>
            <DataBox>
              <DataBoxTitle>Last update</DataBoxTitle>
              <DataBoxContent>
                <Input
                  type="date"
                  defaultValue={
                    project_last_update
                      ? project_last_update.slice(0, -14)
                      : null
                  }
                  onChange={(e) =>
                    editProject(
                      {
                        project_id: project_id,
                        updatedProject: {
                          ...project,
                          project_last_update: e.target.value,
                        },
                        accessToken,
                      },
                      {
                        onSettled: () => {
                          queryClient.invalidateQueries({
                            queryKey: ["project", project_id],
                          });
                        },
                      }
                    )
                  }
                />
              </DataBoxContent>
            </DataBox>
          </DataDetailsContainer>
        )}

        <DataDetailsContainer>
          <DataBox>
            <DataBoxContent style={{ justifyContent: "end", border: "none" }}>
              <ButtonGroup>
                {projectStatus.map((status, index) => {
                  return index !== 0 ? (
                    <Button
                      size="medium"
                      variation={
                        status.value === project_status ? "disabled" : null
                      }
                      active={
                        status.value === project_status ? status.value : null
                      }
                      key={status.value}
                      onClick={(e) =>
                        editProject(
                          {
                            project_id: project_id,
                            updatedProject: {
                              ...project,
                              project_status: status.value,
                            },
                            accessToken,
                          },
                          {
                            onSettled: () => {
                              queryClient.invalidateQueries({
                                queryKey: ["project", project_id],
                              });
                            },
                          }
                        )
                      }
                    >
                      {status.value}
                    </Button>
                  ) : null;
                })}
              </ButtonGroup>
            </DataBoxContent>
          </DataBox>
        </DataDetailsContainer>
      </Row>

      {/* <Headline as="h2">Tasks</Headline> */}
    </>
  );
};

export default ProjectDetail;
