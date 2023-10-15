export const userCols = [
  "Firstname",
  "Lastname",
  "Username",
  "Email",
  "Create date",
  "Last login",
  "Role",
  "Verified",
];

export const userRoles = () => {
  return [
    { value: "", label: "", icon: "" },
    { value: "admin", label: "admin" },
    { value: "user", label: "user" },
  ];
};
