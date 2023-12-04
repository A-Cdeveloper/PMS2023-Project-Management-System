import { Outlet } from "react-router-dom";
import { HiOutlineHome } from "react-icons/hi2";

import Headline from "./Headline";
import Button from "./Buttons/Button";
import ButtonText from "./Buttons/ButtonText";
import ButtonIconText from "./Buttons/ButtonIconText";
import ButtonGroup from "./Buttons/ButtonGroup";
import Row from "./Row";
import { Logo } from "./Logo";

const ComponentsExample = () => {
  return (
    <>
      <Logo />
      <Headline as="h1">Headline 1</Headline>
      <Headline as="h2">Headline 2</Headline>
      <Headline as="h3">Headline 3</Headline>
      <Headline as="h4">Headline 4</Headline>
      <Row>
        <p>
          PARAGRAPH sint non non enim do anim excepteur eiusmod fugiat. Amet do
          commodo pariatur magna qui exercitation in pariatur cupidatat.
          Pariatur laboris laborum laboris elit sint in ipsum officia culpa.
          Laborum aute enim fugiat Lorem adipisicing in mollit sint
          reprehenderit
        </p>
        <p>
          BOLD PARAGRAPH Fugiat in sunt sint non non enim do anim excepteur
          eiusmod fugiat. Amet do commodo pariatur magna qui exercitation in
          pariatur cupidatat. Pariatur laboris laborum laboris elit sint in
          ipsum officia culpa. Laborum aute enim fugiat Lorem adipisicing in
          mollit sint reprehenderit
        </p>
      </Row>

      <Button variation="primary" size="large">
        Primary button
      </Button>
      <Button variation="secondary" size="medium">
        Secondary button
      </Button>
      <Button variation="danger" size="small">
        Danger button
      </Button>
      <Button variation="info" size="medium">
        Info button
      </Button>
      <Button variation="disabled" size="medium">
        Disabled button
      </Button>

      <ButtonText>Button text</ButtonText>

      <ButtonGroup>
        <ButtonIconText icon={<HiOutlineHome />} type="primary">
          Button primary Icon
        </ButtonIconText>
        <ButtonIconText icon={<HiOutlineHome />} type="">
          Button non Icon
        </ButtonIconText>
        <ButtonIconText icon={<HiOutlineHome />} type="secondary">
          Button secondary Icon
        </ButtonIconText>
        <ButtonIconText icon={<HiOutlineHome />} type="info">
          Button info Icon
        </ButtonIconText>
      </ButtonGroup>
      <Outlet />
    </>
  );
};

export default ComponentsExample;
