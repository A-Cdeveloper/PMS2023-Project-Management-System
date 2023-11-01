import styled, { css } from "styled-components";

const Row = styled.div`
  display: flex;
  padding-bottom: 2rem;
  ${(props) =>
    props.type === "horizontal" &&
    css`
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
    `}

  ${(props) =>
    props.type === "horizontalandgap" &&
    css`
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 5rem;
    `}


  ${(props) =>
    props.type === "vertical" &&
    css`
      flex-direction: column;
      gap: 1.6rem;
    `}

    ${(props) =>
    props.type === "verticalnogap" &&
    css`
      flex-direction: column;
    `}
`;

Row.defaultProps = {
  type: "vertical",
};

export default Row;
