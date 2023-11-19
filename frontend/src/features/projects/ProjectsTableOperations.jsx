import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import FilterText from "../../ui/FilterText";
import Filter from "../../ui/Filter";
import NewRecord from "../../ui/Buttons/NewRecord";
import AddEditProject from "./AddEditProject";

import { projectStatus } from "./ProjectParameters";
import useCountResurces from "../../hooks-api/useCountResurces";

function ClientsTableOperations() {
  const { projectsCount } = useCountResurces();

  return (
    <TableOperations>
      {projectsCount > 1 && (
        <>
          <FilterText placeholder="Search projects..." />
          <Filter
            filterField="status"
            options={projectStatus.map((status) => {
              return { value: status.value, label: status.label };
            })}
          />

          <SortBy
            options={[
              { value: "project_name-asc", label: "Sort by Name (asc)" },
              { value: "project_name-desc", label: "Sort by Name (desc)" },
              { value: "client_name-asc", label: "Sort by Client (asc)" },
              { value: "client_name-desc", label: "Sort by Client (desc)" },
              {
                value: "task_per_project-asc",
                label: "Sort by Tasks num (asc)",
              },
              {
                value: "task_per_project-desc",
                label: "Sort by Tasks num (desc)",
              },

              {
                value: "project_start_date-asc",
                label: "Sort by Start date (earlier first)",
              },
              {
                value: "project_start_date-desc",
                label: "Sort by Start date (recent first)",
              },
              {
                value: "project_end_date-asc",
                label: "Sort by End date (earlier first)",
              },
              {
                value: "project_end_date-desc",
                label: "Sort by End date (recent first)",
              },
            ]}
            defaultOptionIndex={0}
          />
        </>
      )}
      <NewRecord record="project">
        <AddEditProject />
      </NewRecord>
    </TableOperations>
  );
}

export default ClientsTableOperations;
