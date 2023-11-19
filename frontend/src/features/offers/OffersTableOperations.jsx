import { HiPlusCircle } from "react-icons/hi2";
import { useNavigate } from "react-router-dom";
import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import ButtonIconText from "../../ui/Buttons/ButtonIconText";
import FilterText from "../../ui/FilterText";
import useCountResurces from "../../hooks-api/useCountResurces";

function ServicesTableOperations() {
  const navigate = useNavigate();
  const { offersCount } = useCountResurces();
  return (
    <TableOperations>
      {offersCount > 1 && (
        <>
          <FilterText placeholder="Search offers by client..." />
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
        </>
      )}
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
