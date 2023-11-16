import { NavLink } from "react-router-dom";
import {
  HiOutlineWrenchScrewdriver,
  HiOutlineUserGroup,
  HiOutlineHome,
  HiOutlineSquare3Stack3D,
  HiOutlineUsers,
  HiOutlineCog6Tooth,
  HiOutlineBeaker,
  HiCurrencyEuro,
  HiOutlineRocketLaunch,
} from "react-icons/hi2";

import {
  Section,
  StatSection,
  StatSectionBox,
  BoxData,
  Icon,
  Title,
  Value,
} from "../../ui/Data/DashboardLayoutDetails";

const DashboardLayout = () => {
  return (
    <>
      <StatSection>
        <StatSectionBox>
          <NavLink to="/clients">
            <Icon bgcolor="secondary">
              <HiOutlineUserGroup />
            </Icon>
          </NavLink>
          <BoxData>
            <Title>Clients</Title>
            <Value>174</Value>
          </BoxData>
        </StatSectionBox>
        <StatSectionBox>
          <Icon bgcolor="primary">
            <HiOutlineSquare3Stack3D />
          </Icon>
          <BoxData>
            <Title>Projects</Title>
            <Value>784</Value>
          </BoxData>
        </StatSectionBox>
        <StatSectionBox>
          <Icon bgcolor="info">
            <HiOutlineWrenchScrewdriver />
          </Icon>
          <BoxData>
            <Title>Tasks</Title>
            <Value>84</Value>
          </BoxData>
        </StatSectionBox>
        <StatSectionBox>
          <Icon bgcolor="blue">
            <HiOutlineUsers />
          </Icon>
          <BoxData>
            <Title>Users</Title>
            <Value>6</Value>
          </BoxData>
        </StatSectionBox>
      </StatSection>

      <Section>TEST</Section>
    </>
  );
};

export default DashboardLayout;
