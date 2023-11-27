import { NavLink } from "react-router-dom";
import ActivitiesList from "./ActivitiesList";
import { formatDate } from "../../../utils/helpers";

const ProjectsList = ({ project }) => {
  return (
    <ActivitiesList.Item key={project.project_id}>
      <span>
        <strong>
          <NavLink to={`/projects/${project.project_id}`}>
            {project.project_name}
          </NavLink>
        </strong>
      </span>
      <span>{project.client_name}</span>
      <span>{formatDate(project.project_start_date)}</span>
    </ActivitiesList.Item>
  );
};

export default ProjectsList;
