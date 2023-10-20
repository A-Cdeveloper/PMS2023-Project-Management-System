import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getProjects = async ({ sortBy, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/${sortBy.join("=")}`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Projects list could't be loaded!");
};

// //////////////////////////////////////////////////////////////////
export const getFilteredProjects = async ({
  sortBy,
  page,
  perPage,
  accessToken,
}) => {
  let from = 0;
  let response;
  if (page && sortBy) {
    from = (page - 1) * perPage;
    response = await fetch(
      `${API_URL}/projects/filter/${from}/${perPage}/${sortBy.join("=")}`,
      {
        headers: headerApiFn(accessToken),
      }
    );
  }

  return await responseApiFn(response, "Projects list could't be loaded!");
};

// ///////////////////////////////////////////////////////////////////////
export const addNewProject = async ({ newProject, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/new`, {
    method: "POST",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ newProject }),
  });

  return await responseApiFn(
    response,
    "Project can't be added! Please try again"
  );
};

///////////////////////////////////////////////////////////////////////
export const cloneProject = async ({ project_id, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/${project_id}/duplicate`, {
    method: "POST",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(
    response,
    "Project can't be duplicated! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const deleteProject = async ({ project_id, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/${project_id}/delete`, {
    method: "DELETE",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(
    response,
    "Project can't be deleted! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const editProject = async ({
  project_id,
  updatedProject,
  accessToken,
}) => {
  const response = await fetch(`${API_URL}/projects/${project_id}/edit`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ updatedProject }),
  });

  return await responseApiFn(
    response,
    "Project can't be edit! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const singleProject = async ({ project_id, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/project/${project_id}`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Project not found");
};

//// advanced //////////////////////////////////////////////////////////////
