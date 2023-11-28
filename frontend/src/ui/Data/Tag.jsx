import styled, { css } from "styled-components";

export const status = {
  online: css`
    background: #6fa111;
  `,
  offline: css`
    background: #8c8f88;
    color: dark;
  `,

  open: css`
    background: #6fa111;
  `,
  archive: css`
    background: #be3131;
  `,
  closed: css`
    background: #be3131;
  `,
  future: css`
    background: #c45f9d;
  `,

  invoiced: css`
    background: #032949;
  `,
  working: css`
    background: #4475b6;
  `,
};

const Tag = styled.span`
  display: block;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-size: 1.1rem;
  font-weight: ${(props) => props.theme.fontWeight.bold};
  padding: 0.3rem 1rem;
  border-radius: 100px;
  letter-spacing: 0.09rem;
  color: #fff;
  ${(props) => status[props.type]}
`;

export default Tag;
