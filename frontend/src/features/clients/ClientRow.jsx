import styled from "styled-components";
import Table from "../../ui/Table";
import {
  HiOutlineEnvelope,
  HiOutlinePhone,
  HiOutlineNewspaper,
  HiOutlineGlobeAlt,
  HiEllipsisVertical,
} from "react-icons/hi2";

const Client = styled.div`
  font-weight: 500;
`;

const CellIcon = styled.div`
  display: flex;
  & svg {
    width: 2rem;
    height: 2rem;
    margin: 0 0.5rem;
  }
`;

const ClientRow = ({ client }) => {
  const {
    client_id,
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
  } = client;

  return (
    <Table.Row>
      <Client>{client_name}</Client>
      <div>{client_adresse}</div>
      <div>{client_contact}</div>
      <CellIcon>
        <a href={`tel: ${client_phone}`}>
          <HiOutlinePhone />
        </a>
        {client_fax && (
          <a href={`tel: ${client_fax}`}>
            <HiOutlineNewspaper />
          </a>
        )}
      </CellIcon>

      <CellIcon>
        <a href={`mailto: ${client_email}`} title={client_email}>
          <HiOutlineEnvelope />
        </a>
      </CellIcon>
      <CellIcon>
        <a href={client_site} target="_blank" title={client_site}>
          <HiOutlineGlobeAlt />
        </a>
      </CellIcon>

      <CellIcon>
        <HiEllipsisVertical />
      </CellIcon>
    </Table.Row>
  );
};

export default ClientRow;
