import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import styled from "styled-components";

// import { singleClient } from "../../services/apiClients";

import { formatDate } from "../../utils/helpers";

import Table from "../../ui/Table";
import {
  HiOutlineEnvelope,
  HiOutlinePhone,
  HiOutlineNewspaper,
  HiOutlineGlobeAlt,
  HiOutlineDocumentDuplicate,
  HiPencil,
  HiTrash,
  HiEye,
  HiOutlineClock,
} from "react-icons/hi2";
import {
  FaCloud,
  FaDatabase,
  FaPhp,
  FaRegCreditCard,
  FaTypo3,
  FaWordpressSimple,
} from "react-icons/fa";
import Tag from "../../ui/Tag";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";
import AddEditClient from "../clients/AddEditClient";
import ConfirmModal from "../../ui/ConfirmModal";
// import useCloneClient from "../clients/useCloneClient";
// import useDeleteClient from "../clients/useDeleteClient";

const Project = styled.div`
  font-weight: 500;
`;

const CellIcon = styled.div`
  display: flex;
  & svg {
    width: 2rem;
    height: 2rem;
    // margin: 0 0.5rem;
  }
`;

const ProjectRow = ({ project }) => {
  const navigate = useNavigate();
  // const { isCloneLoading, cloneClient } = useCloneClient();
  // const { isDeleteLoading, deleteClient } = useDeleteClient();
  const queryClient = useQueryClient();

  const {
    project_id,
    project_name,
    client_name,
    project_url,
    project_platform,
    project_hosting,
    project_update,
    project_start_date,
    project_end_date,
    project_status,
    project_online,
  } = project;

  // const prefetchClientHandler = async (client_id) => {
  //   await queryClient.prefetchQuery({
  //     queryKey: ["client", client_id],
  //     queryFn: () => singleClient(client_id),
  //   });
  // };

  return (
    <Table.Row>
      <Project>{project_name}</Project>
      <div>{client_name}</div>
      <CellIcon>
        <a href={project_url} target="_blank" title={project_url}>
          <HiOutlineGlobeAlt />
        </a>
      </CellIcon>
      <CellIcon>
        {project_platform === "WORDPRESS" && <FaWordpressSimple />}
        {project_platform === "PHPMYSQL" || project_online === "OPENCART" ? (
          <>
            <FaPhp />
            <FaDatabase />
          </>
        ) : null}
        {project_platform === "WOOCOMMERCE" && <FaRegCreditCard />}
        {project_platform === "TYPO3" && <FaTypo3 />}
        {project_platform === "OWNCLOUD" && <FaCloud />}
      </CellIcon>

      <div>{project_hosting}</div>

      <div>{formatDate(project_start_date)}</div>
      <div>{formatDate(project_end_date)}</div>
      <div>
        <Tag type={project_status}>{project_status}</Tag>
      </div>
      <div>{project_update}</div>
      <div>{project_online}</div>
      {/* <CellIcon>
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
      </CellIcon> */}

      <div>
        <Modal>
          {/* <Menus>
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
          </Menus> */}

          {/* <Modal.Window name="client-edit">
            <AddEditClient clientToEdit={client} />
          </Modal.Window> */}

          {/* <Modal.Window name="client-clone">
       
            <ConfirmModal
              resourceName="client"
              operation="clone"
              onConfirm={() => cloneClient(client_id)}
              disabled={isCloneLoading}
            />
          </Modal.Window> */}

          {/* <Modal.Window name="client-delete">
           
            <ConfirmModal
              resourceName="client"
              operation="delete"
              onConfirm={() => deleteClient(client_id)}
              disabled={isDeleteLoading}
            />
          </Modal.Window> */}
        </Modal>
      </div>
    </Table.Row>
  );
};

export default ProjectRow;
