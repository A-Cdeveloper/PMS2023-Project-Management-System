export const sortingArray = (array, field, order = "asc") => {
  if (order !== "asc")
    return array.sort((a, b) =>
      a[field].toLowerCase() < b[field].toLowerCase() ? 1 : -1
    );
  return array.sort((a, b) =>
    a[field].toLowerCase() < b[field].toLowerCase() ? -1 : 1
  );
};
