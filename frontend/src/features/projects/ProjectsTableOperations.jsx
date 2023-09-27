import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import FilterText from "../../ui/FilterText";
import Filter from "../../ui/Filter";
import NewRecord from "../../ui/Buttons/NewRecord";
import AddEditProject from "./AddEditProject";

import { projectStatus } from "./ProjectParameters";

function ClientsTableOperations() {
  return (
    <TableOperations>
      <FilterText placeholder="Search projects..." />
      <Filter
        filterField="status"
        options={[
          { value: "all", label: "All" },
          { value: "online", label: "online" },
          { value: "archive", label: "archive" },
          { value: "future", label: "future" },
          { value: "working", label: "working" },
        ]}
      />

      <SortBy
        options={[
          { value: "project_name-asc", label: "Sort by name (asc)" },
          { value: "project_name-desc", label: "Sort by name (desc)" },
          {
            value: "project_start_date-asc",
            label: "Sort by start date (earlier first)",
          },
          {
            value: "project_start_date-desc",
            label: "Sort by start date (recent first)",
          },
          {
            value: "project_end_date-asc",
            label: "Sort by end date (earlier first)",
          },
          {
            value: "project_end_date-desc",
            label: "Sort by end date (recent first)",
          },
        ]}
      />
      <NewRecord record="project">
        <AddEditProject />
      </NewRecord>
    </TableOperations>
  );
}

export default ClientsTableOperations;
