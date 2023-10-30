import { useNavigate } from "react-router-dom";
import { formatDate } from "../../utils/helpers";
import styled from "styled-components";

import {
  projectHosting,
  projectPlatforms,
  projectStatus,
} from "../projects/ProjectParameters";

import { HiOutlineGlobeAlt } from "react-icons/hi2";

import Table from "../../ui/Data/Table";
import Tag from "../../ui/Data/Tag";

const Project = styled.div`
  font-weight: 500;
`;

const Link = styled.div`
  cursor: pointer;
  &:hover {
    color: ${(props) => props.theme.colors.primary[700]};
  }
`;

const CellIcon = styled.div`
  display: flex;

  & svg {
    width: 2rem;
    height: 2rem;
    margin: auto;
    // margin: 0 0.5rem;
  }
`;

const StatusDiv = styled.div`
  & > span {
    width: 80%;
  }
`;

const ClientProjectRow = ({ project, rnum }) => {
  const navigate = useNavigate();
  const {
    project_id,
    project_name,
    project_url,
    project_platform,
    project_hosting,
    project_start_date,
    project_end_date,
    project_status,
  } = project;

  return (
    <Table.Row>
      <div>{rnum + 1}</div>
      <Project>
        <Link onClick={() => navigate(`/projects/${project_id}`)}>
          {project_name}
        </Link>
      </Project>
      <CellIcon>
        <a href={project_url} target="_blank" title={project_url}>
          <HiOutlineGlobeAlt />
        </a>
      </CellIcon>
      <CellIcon>
        {projectPlatforms().map((platform) => {
          return (
            platform.label === project_platform && (
              <span key={platform.label}>{platform.icon}</span>
            )
          );
        })}
      </CellIcon>
      <div>
        {projectHosting.map((hosting) => {
          return (
            hosting.value === project_hosting && (
              <span key={hosting.label}>
                <a
                  href={hosting.link !== "" ? hosting.link : "#"}
                  target={hosting.link !== "" ? "_blank" : null}
                  title={hosting.label}
                >
                  {hosting.label}
                </a>
              </span>
            )
          );
        })}
      </div>

      <div>{formatDate(project_start_date)}</div>
      <div>{formatDate(project_end_date)}</div>
      <StatusDiv>
        {projectStatus.map((status) => {
          return (
            status.value === project_status && (
              <Tag key={project_status} type={status.value}>
                {status.label}
              </Tag>
            )
          );
        })}
      </StatusDiv>
    </Table.Row>
  );
};

export default ClientProjectRow;
