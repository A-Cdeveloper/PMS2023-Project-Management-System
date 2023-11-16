import styled, { css } from "styled-components";

const variations = {
  primary: css`
    color: white;
    background-color: ${(props) => props.theme.colors.primary[50]};
  `,
  secondary: css`
    color: white;
    background-color: ${(props) => props.theme.colors.secondary[50]};
  `,
  blue: css`
    color: white;
    background-color: ${(props) => props.theme.colors.blue[50]};
  `,
  info: css`
    color: ${(props) => props.theme.colors.grey700};
    background-color: ${(props) => props.theme.colors.info[50]};
  `,
};

export const Section = styled.div`
  display: flex;
  flex-wrap: wrap;
  gap: 2rem;
  background: RED;
`;

export const StatSection = styled(Section)`
  width: 60%;
`;

export const StatSectionBox = styled.div`
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

export const Icon = styled.div`
  border-radius: 50%;
  display: flex;
  align-items: center;
  align-self: center;
  justify-content: center;
  padding: 1.3rem;
  ${(props) => variations[props.bgcolor]};
  & svg {
    width: 3.2rem;
    height: 3.2rem;
    color: white;
  }
`;

export const BoxData = styled.div`
  display: flex;
  flex-direction: column;
  padding: 1rem;
  gap: 0.3rem;
`;

export const Title = styled.h5`
  width: 100%;
  font-size: 1.6rem;
  text-transform: uppercase;
  letter-spacing: 0.4px;
  font-weight: ${(props) => props.theme.fontWeight.bold};
  color: ${(props) => props.theme.baseColors.grey400};
`;

export const Value = styled.p`
  font-size: 2.7rem;
  line-height: 1;
  font-weight: 500;
`;

// export const DataBoxTitle = styled(DataBox)`
//   padding: 1rem 2rem;
//   background: ${(props) => props.theme.baseColors.grey200};
//   font-weight: 600;
//   flex: 20%;
//   border-bottom: 1px solid #fff;
//   align-items: center;
// `;
// export const DataBoxContent = styled(DataBox)`
//   padding: 1rem 2rem;
//   flex: 50%;
//   border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
//   white-space: pre-wrap;

//   & > a svg {
//     width: 2rem;
//     height: 2rem;
//     margin-left: 1rem;
//   }
// `;
