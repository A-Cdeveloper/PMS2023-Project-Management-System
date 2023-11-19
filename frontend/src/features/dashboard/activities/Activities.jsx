import styled from "styled-components";
import Headline from "../../../ui/Headline";

const Section = styled.div`
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 2rem;
  padding: 2rem 0;

  & div {
    background: white;
    flex: 1;
    height: 20rem;
    padding: 2rem 2rem 2rem 3rem;
    border: 1px solid ${(props) => props.theme.baseColors.grey100};
    border-radius: ${(props) => props.theme.border.borderRadius.md};
  }
`;

const Activities = () => {
  return (
    <Section>
      <div>
        <Headline as="h3">Online users</Headline>
      </div>
      <div>
        <Headline as="h3">Open tasks</Headline>
      </div>
      <div>
        <Headline as="h3">Working/Planed projects</Headline>
      </div>
    </Section>
  );
};

export default Activities;
