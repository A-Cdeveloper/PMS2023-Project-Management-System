import styled, { css } from "styled-components";

import {
  HiOutlineUserGroup,
  HiOutlineSquare3Stack3D,
  HiOutlineUsers,
  HiOutlineBeaker,
} from "react-icons/hi2";

import useCountResurces from "../../../hooks-api/useCountResurces";
import Stat from "./Stat";

const StatSection = styled.div`
  display: flex;
  flex-wrap: wrap;
  gap: 2rem;
  width: 60%;
`;

const SummarylStats = () => {
  const { clientsCount, projectsCount, servicesCount, usersCount } =
    useCountResurces();
  return (
    <StatSection>
      <Stat
        items="clients"
        icon={<HiOutlineUserGroup />}
        count={clientsCount}
      />
      <Stat
        items="projects"
        icon={<HiOutlineSquare3Stack3D />}
        count={projectsCount}
      />
      <Stat items="services" icon={<HiOutlineBeaker />} count={servicesCount} />
      <Stat items="users" icon={<HiOutlineUsers />} count={usersCount} />
    </StatSection>
  );
};

export default SummarylStats;
