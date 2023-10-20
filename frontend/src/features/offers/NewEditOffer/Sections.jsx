import styled from "styled-components";

export const SectionCaption = styled.div`
  width: 100%;
  background-color: ${(props) => props.theme.baseColors.grey300};
  padding: 1rem 2rem;
  font-weight: ${(props) => props.theme.fontWeight.bold};
  font-size: 1.6rem;
`;
export const Section = styled.div`
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 2rem;
  padding: 2rem 0;
`;
export const SectionData = styled.div`
  background: #fff;
  padding: 2rem;
  flex-grow: 1;
  box-shadow: ${(props) => props.theme.shadow.xs};
`;
