import styled, { css } from "styled-components";
import { NavLink } from "react-router-dom";

const variations = {
  projects: css`
    color: white;
    background-color: ${(props) => props.theme.colors.primary[50]};
  `,
  clients: css`
    color: white;
    background-color: ${(props) => props.theme.colors.secondary[50]};
  `,
  users: css`
    color: white;
    background-color: ${(props) => props.theme.colors.blue[50]};
  `,
  services: css`
    color: ${(props) => props.theme.colors.grey700};
    background-color: ${(props) => props.theme.colors.info[50]};
  `,
};

const StatSectionBox = styled.div`
  display: flex;
  background: white;
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  padding: 0.4rem 1.4rem;
  border-radius: ${(props) => props.theme.border.borderRadius.md};

  flex: 1;
  flex-grow: 1;
  flex-basis: 1;
  gap: 0.5rem;
`;

const Icon = styled.div`
  border-radius: 50%;
  display: flex;
  align-self: center;
  justify-content: center;
  padding: 0.7rem 1rem 0.4rem 1rem;
  opacity: 0.85;
  ${(props) => variations[props.bgcolor]};
  transition: all 0.5s ease-in-out;
  &:hover {
    opacity: 1;
  }
  & svg {
    width: 3.4rem;
    height: 3.4rem;
    color: white;
  }
`;

const BoxData = styled.div`
  display: flex;
  flex-direction: column;
  padding: 1rem;
  gap: 0.3rem;
`;

const Title = styled.h5`
  width: 100%;
  font-size: 1.4rem;
  text-transform: uppercase;
  letter-spacing: 0.4px;
  font-weight: ${(props) => props.theme.fontWeight.bold};
  color: ${(props) => props.theme.baseColors.grey400};
`;

const Value = styled.p`
  font-size: 2.7rem;
  line-height: 1;
  font-weight: 500;
`;

const Stat = ({ items, icon, count }) => {
  return (
    <StatSectionBox>
      <Icon bgcolor={items}>
        <NavLink to={`/${items}`}>{icon}</NavLink>
      </Icon>

      <BoxData>
        <Title>{items}</Title>
        <Value>{count}</Value>
      </BoxData>
    </StatSectionBox>
  );
};

export default Stat;
