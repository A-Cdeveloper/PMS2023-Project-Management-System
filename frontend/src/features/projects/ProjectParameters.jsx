import {
  FaCloud,
  FaDatabase,
  FaPhp,
  FaRegCreditCard,
  FaTypo3,
  FaWordpressSimple,
} from "react-icons/fa";

import { useClients } from "../clients/useClients";

export const projectAllClients = () => {
  const { clients } = useClients();

  const clientsList = clients.map((client) => {
    return { value: client.client_id, label: client.client_name };
  });

  return [{ value: "", label: "" }, ...clientsList];
};

export const projectCols = [
  "Project",
  "Client",
  "Url",
  "Tech",
  "Hosting",
  "Start Date",
  "End Date",
  "Status",
  "Update",
  "Protfolio",
];

export const projectPlatforms = () => {
  return [
    { value: "", label: "", icon: "" },
    { value: "WORDPRESS", label: "WORDPRESS", icon: <FaWordpressSimple /> },
    { value: "WOOCOMMERCE", label: "WOOCOMMERCE", icon: <FaRegCreditCard /> },
    {
      value: "PHPMYSQL",
      label: "PHPMYSQL",
      icon: <FaPhp />,
    },
    {
      value: "OPENCART",
      label: "OPENCART",
      icon: <FaDatabase />,
    },
    { value: "TYPO3", label: "TYPO3", icon: <FaTypo3 /> },
    { value: "OWNCLOUD", label: "OWNCLOUD", icon: <FaCloud /> },
  ];
};

export const projectHosting = [
  { value: "", label: "" },
  { value: "he", label: "HOSTEUROPE" },
  { value: "1und1", label: "IONOS" },
  { value: "strato", label: "STRATO" },
  { value: "domainfactory", label: "DOMAINFACTORY" },
  { value: "other", label: "OTHER" },
];

export const projectStatus = [
  { value: "", label: "" },
  { value: "future", label: "future" },
  { value: "working", label: "working" },
  { value: "online", label: "online" },
  { value: "archive", label: "archive" },
];
