import styled, { css } from "styled-components";

const status = {
  online: css`
    background: #6fa111;
  `,
  archive: css`
    background: #be3131;
  `,
  future: css`
    background: #c45f9d;
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
