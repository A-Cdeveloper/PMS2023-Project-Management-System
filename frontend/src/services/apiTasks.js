import { API_URL } from "../utils/constants";

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

//////////////////////////////////////////////////////////////////
export const getTasks = async ({ startIntervalDate, endIntervalDate }) => {
  const response = await fetch(
    `${API_URL}/tasks/tasks/${startIntervalDate}/${endIntervalDate}`
  );
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Tasks list could't be loaded!");
  }

  if (response.status === 400) {
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
}) => {
  let from = 0;
  let response;
  if (page) {
    from = (page - 1) * perPage;
  }
  response = await fetch(
    `${API_URL}/tasks/filter/${from}/${perPage}/${startIntervalDate}/${endIntervalDate}`
  );

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Tasks list could't be loaded!");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  //await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const addNewTask = async (newTask) => {
  const response = await fetch(`${API_URL}/tasks/new`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(newTask),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be added! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

///////////////////////////////////////////////////////////////////////
export const cloneTask = async (taskId) => {
  const response = await fetch(`${API_URL}/tasks/${taskId}/duplicate`, {
    method: "POST",
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be duplicated! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const deleteTask = async (taskId) => {
  const response = await fetch(`${API_URL}/tasks/${taskId}/delete`, {
    method: "DELETE",
  });
  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be deleted! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const editTask = async (taskId, updatedTask) => {
  const response = await fetch(`${API_URL}/tasks/${taskId}/edit`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(updatedTask),
  });

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task can't be edit! Please try again");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }
  // await wait(3000);
  return data;
};

// ///////////////////////////////////////////////////////////////////////
export const singleTask = async (task_id) => {
  const response = await fetch(`${API_URL}/tasks/task/${task_id}`);

  const data = await response.json();

  if (response.status === 404) {
    throw new Error("Task not found");
  }

  if (response.status === 400) {
    throw new Error(data.message);
  }

  return data;
};
