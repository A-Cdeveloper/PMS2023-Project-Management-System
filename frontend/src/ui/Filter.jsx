import styled, { css } from "styled-components";
import { useSearchParams } from "react-router-dom";

const StyledFilter = styled.div`
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  background-color: #fff;
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  color: ${(props) => props.theme.baseColors.grey500};
  padding: 0.4rem;
  display: flex;
  gap: 0.4rem;
`;

export const FilterButton = styled.button`
  background: none;
  border: none;

  ${(props) =>
    props.active &&
    css`
      background-color: ${(props) => props.theme.baseColors.grey500};
      color: #fff;
    `}

  border-radius: ${(props) => props.theme.border.borderRadius.md};
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  font-size: 1.4rem;
  /* To give the same height as select */
  padding: 0.44rem 0.8rem;
  transition: all 0.3s;

  &:active,
  &:focus {
    outline: none;
  }

  &:hover:not(:disabled) {
    background-color: ${(props) => props.theme.baseColors.grey500};
    color: #fff;
  }
`;

const Filter = ({ filterField, options }) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const currentFilter = searchParams.get(filterField) || options[0].value;

  const handleClick = (value) => {
    searchParams.set(filterField, value);
    if (value === "all") searchParams.delete(filterField);
    if (searchParams.get("page")) searchParams.delete("page");
    if (searchParams.get("sortBy")) searchParams.delete("sortBy");
    setSearchParams(searchParams);
  };

  return (
    <StyledFilter>
      {options.map((opt) => {
        return (
          <FilterButton
            key={opt.value}
            onClick={() => handleClick(opt.value)}
            active={currentFilter === opt.value ? currentFilter : ""}
            disabled={currentFilter === opt.value}
          >
            {opt.label}
          </FilterButton>
        );
      })}
    </StyledFilter>
  );
};

export default Filter;
