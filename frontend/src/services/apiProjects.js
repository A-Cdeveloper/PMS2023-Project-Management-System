import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

//////////////////////////////////////////////////////////////////
export const getProjects = async ({ sortBy }) => {
  const response = await fetch(`${API_URL}/projects/${sortBy.join("=")}`);

  if (response.status === 404) {
    throw new Error("Projects list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  const data = await response.json();

  return data;
};

// //////////////////////////////////////////////////////////////////
export const getFilteredProjects = async ({ sortBy, page, perPage }) => {
  let from = 0;
  let response;
  if (page && sortBy) {
    from = (page - 1) * perPage;
    response = await fetch(
      `${API_URL}/projects/filter/${from}/${perPage}/${sortBy.join("=")}`
    );
  }

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Projects list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const addNewProject = async (newProject) => {
  const response = await fetch(`${API_URL}/projects/new`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(newProject),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be added! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const cloneProject = async (projectId) => {
  const response = await fetch(`${API_URL}/projects/${projectId}/duplicate`, {
    method: "POST",
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be duplicated! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const deleteProject = async (projectId) => {
  const response = await fetch(`${API_URL}/projects/${projectId}/delete`, {
    method: "DELETE",
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be deleted! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const editProject = async (projectId, updatedProject) => {
  const response = await fetch(`${API_URL}/projects/${projectId}/edit`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(updatedProject),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project can't be edit! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }
  // await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const singleProject = async (project_id) => {
  const response = await fetch(`${API_URL}/projects/project/${project_id}`);

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Project not found");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};
