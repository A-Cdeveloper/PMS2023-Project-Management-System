// import {
//   FaCloud,
//   FaDatabase,
//   FaPhp,
//   FaRegCreditCard,
//   FaTypo3,
//   FaWordpressSimple,
// } from "react-icons/fa";

// import { useClients } from "../clients/useClients";

// export const projectAllClients = () => {
//   const { clients } = useClients();

//   const clientsList = clients.map((client) => {
//     return { value: client.client_id, label: client.client_name };
//   });

//   return [{ value: "", label: "" }, ...clientsList];
// };

export const taskCols = [
  "Task",
  "Project/Client",
  "Add Date",
  "Start Date",
  "End Date",
  "Used time",
  "Status",
];

export const taskStatus = [
  { value: "all", label: "All" },
  { value: "open", label: "open" },
  { value: "working", label: "working" },
  { value: "closed", label: "closed" },
  { value: "invoiced", label: "invoiced" },
];
