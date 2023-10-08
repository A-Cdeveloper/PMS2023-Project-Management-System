import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

const headersObj = {
  "Content-Type": "application/json",
  Authorization: "",
};

//////////////////////////////////////////////////////////////////
export const getTasks = async ({
  startIntervalDate,
  endIntervalDate,
  accessToken,
}) => {
  const response = await fetch(
    `${API_URL}/tasks/tasks/${startIntervalDate}/${endIntervalDate}`,
    {
      headers: {
        ...headersObj,
        Authorization: `token ${accessToken}`,
      },
    }
  );
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Tasks list could't be loaded!");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// //////////////////////////////////////////////////////////////////
export const getFilteredTasks = async ({
  page,
  perPage,
  startIntervalDate,
  endIntervalDate,
  accessToken,
}) => {
  let from = 0;
  let response;
  if (page) {
    from = (page - 1) * perPage;
  }
  response = await fetch(
    `${API_URL}/tasks/filter/${from}/${perPage}/${startIntervalDate}/${endIntervalDate}`,
    {
      headers: {
        ...headersObj,
        Authorization: `token ${accessToken}`,
      },
    }
  );

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Tasks list could't be loaded!");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const singleTask = async ({ task_id, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/task/${task_id}`, {
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task not found");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const addNewTask = async ({ newTask, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/new`, {
    method: "POST",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ newTask }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be added! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const cloneTask = async ({ task_id, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/${task_id}/duplicate`, {
    method: "POST",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be duplicated! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const deleteTask = async ({ task_id, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/${task_id}/delete`, {
    method: "DELETE",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be deleted! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const editTask = async ({ task_id, updatedTask, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/${task_id}/edit`, {
    method: "PATCH",
    headers: {
      ...headersObj,
      Authorization: `token ${accessToken}`,
    },
    body: JSON.stringify({ updatedTask }),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be edit! Please try again");
  }

  if (response.status === 400 || response.status === 401) {
    throw new Error(data.message);
  }
  // await wait(3000);
  return data;
};
