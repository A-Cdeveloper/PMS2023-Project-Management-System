/*  */
import styled, { css } from "styled-components";

const sizes = {
  small: css`
    font-size: 1.2rem;
    padding: 0.4rem 0.8rem;
    text-transform: uppercase;
    text-align: center;
    font-weight: 600;
  `,
  medium: css`
    font-size: 1.4rem;
    padding: 1rem 1.6rem;
  `,
  large: css`
    font-size: 1.6rem;
    padding: 1.2rem 2.4rem;
  `,
};

const variations = {
  primary: css`
    color: white;
    background-color: ${(props) => props.theme.colors.primary[100]};

    &:hover {
      background-color: ${(props) => props.theme.colors.primary[700]};
    }
  `,
  secondary: css`
    color: white;
    background-color: ${(props) => props.theme.colors.secondary[100]};

    &:hover {
      background-color: ${(props) => props.theme.colors.secondary[700]};
    }
  `,
  danger: css`
    color: white;
    background-color: ${(props) => props.theme.colors.danger[100]};

    &:hover {
      background-color: ${(props) => props.theme.colors.danger[700]};
    }
  `,
  info: css`
    color: ${(props) => props.theme.colors.grey700};
    background-color: ${(props) => props.theme.colors.info[100]};

    &:hover {
      color: white;
      background-color: ${(props) => props.theme.colors.info[700]};
    }
  `,
  disabled: css`
    color: ${(props) => props.theme.colors.grey900};
    background-color: ${(props) => props.theme.colors.grey400};
    cursor: not-allowed;

    &:focus {
      background-color: ${(props) => props.theme.colors.grey400};
      transform: translateY(0px);
      box-shadow: ${(props) => props.theme.shadow.md};
    }
  `,
};

const StyledButton = styled.button`
  border: none;
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  box-shadow: ${(props) => props.theme.shadow.sm};
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  transition: all 0.1s ease-in;
  text-transform: uppercase;

  &:focus {
    box-shadow: ${(props) => props.theme.shadow.xs};
    outline: none;
    transform: translateY(1px);
  }

  ${(props) => sizes[props.size]}
  ${(props) => variations[props.variation]}
  background-color: ${(props) =>
    props.active ? props.theme.baseColors.grey500 : null};
  color: ${(props) => (props.active ? "#fff" : null)};
`;

const Button = ({ children, variation, size, active = false, onClick }) => {
  return (
    <StyledButton
      variation={variation}
      size={size}
      active={active}
      onClick={onClick}
    >
      {children}
    </StyledButton>
  );
};

export default Button;
