import { HiPlusCircle } from "react-icons/hi2";
import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import ButtonIconText from "../../ui/Buttons/ButtonIconText";
import { useNavigate } from "react-router-dom";

function ServicesTableOperations() {
  const navigate = useNavigate();
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
      <ButtonIconText
        icon={<HiPlusCircle />}
        type="info"
        onClick={() => {
          navigate("/offers/new");
        }}
      >
        Add offer
      </ButtonIconText>
    </TableOperations>
  );
}

export default ServicesTableOperations;
