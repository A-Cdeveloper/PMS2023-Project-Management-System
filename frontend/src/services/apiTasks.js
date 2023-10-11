import { API_URL } from "../utils/constants";
import { headerApiFn, responseApiFn } from "../utils/helpers";

//////////////////////////////////////////////////////////////////
export const getTasks = async ({
  startIntervalDate,
  endIntervalDate,
  accessToken,
}) => {
  const response = await fetch(
    `${API_URL}/tasks/tasks/${startIntervalDate}/${endIntervalDate}`,
    {
      headers: headerApiFn(accessToken),
    }
  );

  return await responseApiFn(response, "Tasks list could't be loaded!");
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
      headers: headerApiFn(accessToken),
    }
  );

  return await responseApiFn(response, "Tasks list could't be loaded!");
};

// ///////////////////////////////////////////////////////////////////////
export const singleTask = async ({ task_id, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/task/${task_id}`, {
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(response, "Task not found");
};

// ///////////////////////////////////////////////////////////////////////
export const addNewTask = async ({ newTask, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/new`, {
    method: "POST",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ newTask }),
  });

  return await responseApiFn(response, "Task can't be added! Please try again");
};

///////////////////////////////////////////////////////////////////////
export const cloneTask = async ({ task_id, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/${task_id}/duplicate`, {
    method: "POST",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(
    response,
    "Task can't be duplicated! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const deleteTask = async ({ task_id, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/${task_id}/delete`, {
    method: "DELETE",
    headers: headerApiFn(accessToken),
  });

  return await responseApiFn(
    response,
    "Task can't be deleted! Please try again"
  );
};

// ///////////////////////////////////////////////////////////////////////
export const editTask = async ({ task_id, updatedTask, accessToken }) => {
  const response = await fetch(`${API_URL}/tasks/${task_id}/edit`, {
    method: "PATCH",
    headers: headerApiFn(accessToken),
    body: JSON.stringify({ updatedTask }),
  });

  return await responseApiFn(response, "Task can't be edit! Please try again");
};
