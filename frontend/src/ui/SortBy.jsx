import { useSearchParams } from "react-router-dom";
import Select from "./Select";

const SortBy = ({ options, defaultOptionIndex }) => {
  const [searchParams, setSearchParams] = useSearchParams();

  const handleChange = (e) => {
    searchParams.set("sortBy", e.target.value);
    searchParams.set("page", 1);
    setSearchParams(searchParams);
  };

  return (
    <Select
      options={options}
      type="white"
      onChange={handleChange}
      value={searchParams.get("sortBy") || options[defaultOptionIndex].value}
    />
  );
};

export default SortBy;
