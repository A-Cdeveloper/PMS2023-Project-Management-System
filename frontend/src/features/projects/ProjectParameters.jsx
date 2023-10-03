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
  "Tasks",
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
  { value: "he", label: "KIS", link: "https://sso.hosteurope.de/" },
  { value: "1und1", label: "IONOS", link: "https://login.ionos.com/" },
  {
    value: "strato",
    label: "STRATO",
    link: "https://www.strato.de/apps/CustomerService#/skl",
  },
  {
    value: "domainfactory",
    label: "DOMAINFACTORY",
    link: "https://admin.df.eu/kunde/",
  },
  { value: "other", label: "OTHER", link: "" },
];

export const projectStatus = [
  { value: "all", label: "All" },
  { value: "future", label: "future" },
  { value: "working", label: "working" },
  { value: "online", label: "online" },
  { value: "archive", label: "archive" },
];

export const projectUpdateStatus = [
  { value: "", label: "" },
  { value: "per month", label: "per month" },
  { value: "quarterly", label: "quarterly" },
  { value: "six months", label: "six months" },
  { value: "per year", label: "per year" },
];
