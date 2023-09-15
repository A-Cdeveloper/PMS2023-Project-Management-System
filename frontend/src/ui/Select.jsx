import styled from "styled-components";

const StyledSelect = styled.select`
  font-size: 1.4rem;
  padding: 0.8rem 1.2rem;
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  color: ${(props) => props.theme.baseColors.grey500};
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  background-color: white;
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  &:active,
  &:focus {
    outline: none;
    border: 1px solid ${(props) => props.theme.baseColors.grey300};
  }

  /* & option {
    background-color: white;
    &:hover {
      background-color: ${(props) => props.theme.colors.lighter}!important;
    }
  } */
`;

const Select = ({ options, value, onChange, ...props }) => {
  return (
    <StyledSelect value={value} onChange={onChange} {...props}>
      {options.map((opt) => {
        return (
          <option key={opt.value} value={opt.value}>
            {opt.label}
          </option>
        );
      })}
    </StyledSelect>
  );
};

export default Select;
