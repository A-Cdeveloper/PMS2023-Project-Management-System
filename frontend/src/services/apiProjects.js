import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

const headersObj = {
  "Content-Type": "application/json",
  Authorization: "",
};

//////////////////////////////////////////////////////////////////
export const getProjects = async ({ sortBy, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/${sortBy.join("=")}`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });

  if (response.status === 404) {
    throw new Error("Projects list could't be loaded!");
  }
  const data = await response.json();

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
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
        headers: {
          ...headersObj,
          Authorization: `token ${accessToken}`,
        },
      }
    );
  }

  if (response.status === 404) {
    throw new Error("Projects list could't be loaded!");
  }

  const data = await response.json();

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const addNewProject = async ({ newProject, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/new`, {
    method: "POST",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ newProject }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be added! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const cloneProject = async ({ project_id, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/${project_id}/duplicate`, {
    method: "POST",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be duplicated! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const deleteProject = async ({ project_id, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/${project_id}/delete`, {
    method: "DELETE",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be deleted! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const editProject = async ({
  project_id,
  updatedProject,
  accessToken,
}) => {
  const response = await fetch(`${API_URL}/projects/${project_id}/edit`, {
    method: "PATCH",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ updatedProject }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be edit! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }
  // await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const singleProject = async ({ project_id, accessToken }) => {
  const response = await fetch(`${API_URL}/projects/project/${project_id}`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project not found");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};
