import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import FilterText from "../../ui/FilterText";
// import NewRecord from "../../ui/Buttons/NewRecord";
// import AddEditService from "./AddEditService";

function ServicesTableOperations() {
  return (
    <TableOperations>
      <SortBy
        options={[
          { value: "offer_number-asc", label: "Sort by number (asc)" },
          { value: "offer_number-desc", label: "Sort by number (desc)" },
          {
            value: "offer_date-desc",
            label: "Sort by Date (recent first)",
          },
          {
            value: "offer_date-asc",
            label: "Sort by Date (earlier first)",
          },
        ]}
        defaultOptionIndex={0}
      />
      {/* <NewRecord record="service">
        <AddEditService />
      </NewRecord> */}
    </TableOperations>
  );
}

export default ServicesTableOperations;
