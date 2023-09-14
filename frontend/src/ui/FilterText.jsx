import { useRef } from "react";
import { useSearchParams } from "react-router-dom";
import styled from "styled-components";

const FilterInput = styled.input`
  border: 1px solid ${(props) => props.theme.baseColors.grey200};
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  background-color: white;
  font-size: 1.4rem;
  padding: 0.8rem 1.2rem;
  &:focus {
    outline: none;
  }
`;

const FilterText = () => {
  const [searchParams, setSearchParams] = useSearchParams();
  const filterRef = useRef("");

  const filterTextHandler = () => {
    if (filterRef?.current?.value === "") {
      searchParams.delete("filter");
      setSearchParams(searchParams);
    } else {
      searchParams.set(
        "filter",
        filterRef?.current?.value.trim().toLowerCase()
      );
      setSearchParams(searchParams);
    }

    //console.log(filterRef.current.value);
  };

  return (
    <FilterInput
      placeholder="Search clients..."
      ref={filterRef}
      onChange={filterTextHandler}
    />
  );
};

export default FilterText;
