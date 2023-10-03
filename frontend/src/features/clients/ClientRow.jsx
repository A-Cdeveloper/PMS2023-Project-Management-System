import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { singleClient } from "../../services/apiClients";

import styled from "styled-components";
import Table from "../../ui/Data/Table";
import {
  HiOutlineEnvelope,
  HiOutlinePhone,
  HiOutlineNewspaper,
  HiOutlineGlobeAlt,
  HiOutlineDocumentDuplicate,
  HiPencil,
  HiTrash,
  HiEye,
} from "react-icons/hi2";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";
import AddEditClient from "./AddEditClient";
import ConfirmModal from "../../ui/ConfirmModal";
import useCloneClient from "./useCloneClient";
import useDeleteClient from "./useDeleteClient";

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
  const navigate = useNavigate();
  const { isCloneLoading, cloneClient } = useCloneClient();
  const { isDeleteLoading, deleteClient } = useDeleteClient();
  const queryClient = useQueryClient();

  const {
    client_id,
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
    project_per_client,
  } = client;

  const prefetchClientHandler = async (client_id) => {
    await queryClient.prefetchQuery({
      queryKey: ["client", client_id],
      queryFn: () => singleClient(client_id),
    });
  };

  return (
    <Table.Row>
      <Client>{client_name}</Client>
      <div>{client_adresse}</div>
      <div>{client_contact}</div>
      <CellIcon>
        <a href={`tel: ${client_phone}`}>
          <HiOutlinePhone />
        </a>
      </CellIcon>

      <CellIcon>
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
      <div style={{ textAlign: "center" }}>{project_per_client}</div>

      <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={client_id} />

            <Menus.List id={client_id}>
              <Menus.Button
                icon={<HiEye />}
                onClick={() => {
                  navigate(`/clients/${client_id}`);
                }}
                onMouseOver={() => prefetchClientHandler(client_id)}
              >
                See details
              </Menus.Button>

              <Modal.OpenButton opens="client-edit">
                <Menus.Button icon={<HiPencil />}>Edit</Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="client-clone">
                <Menus.Button icon={<HiOutlineDocumentDuplicate />}>
                  Duplicate
                </Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="client-delete">
                <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
              </Modal.OpenButton>
            </Menus.List>
          </Menus>
          <Modal.Window name="client-edit">
            <AddEditClient clientToEdit={client} />
          </Modal.Window>
          <Modal.Window name="client-clone">
            <ConfirmModal
              resourceName="client"
              operation="clone"
              onConfirm={() => cloneClient(client_id)}
              disabled={isCloneLoading}
            />
          </Modal.Window>
          <Modal.Window name="client-delete">
            <ConfirmModal
              resourceName="client"
              operation="delete"
              connectedResurces={project_per_client !== 0}
              onConfirm={() => deleteClient(client_id)}
              disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div>
    </Table.Row>
  );
};

export default ClientRow;
