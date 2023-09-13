import styled, { css } from "styled-components";

const Headline = styled.h1`
  font-weight: 600;
  line-height: 1;
  ${(props) =>
    props.as === "h1" &&
    css`
      font-size: 3rem;
    `}
  ${(props) =>
    props.as === "h2" &&
    css`
      font-size: 2.5rem;
    `}
    ${(props) =>
    props.as === "h3" &&
    css`
      font-size: 2rem;
      font-weight: 500;
    `}
    ${(props) =>
    props.as === "h4" &&
    css`
      font-size: 1.8rem;
      font-weight: 500;
    `}
`;

export default Headline;
