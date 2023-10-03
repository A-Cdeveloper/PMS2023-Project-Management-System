import { useRef } from "react";
import { useSearchParams } from "react-router-dom";
import styled from "styled-components";

const FilterInput = styled.input`
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  background-color: white;
  font-size: 1.4rem;
  padding: 0.8rem 1.2rem;
  width: 20rem;
  &:focus {
    outline: none;
  }
`;

const FilterText = ({ placeholder }) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const filterRef = useRef("");

  const filterTextHandler = () => {
    filterRef?.current?.value === ""
      ? searchParams.delete("filterByText")
      : searchParams.set(
          "filterByText",
          filterRef?.current?.value.toLowerCase()
        );

    searchParams.delete("page");
    setSearchParams(searchParams);
  };

  return (
    <FilterInput
      placeholder={placeholder}
      ref={filterRef}
      onChange={filterTextHandler}
      value={searchParams.get("filterByText") || ""}
    />
  );
};

export default FilterText;
