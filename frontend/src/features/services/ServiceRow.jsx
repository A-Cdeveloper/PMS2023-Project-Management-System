import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { useAccessToken } from "../../context/authContext";

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
// import AddEditClient from "./AddEditClient";
import ConfirmModal from "../../ui/ConfirmModal";
import { formatPrice } from "../../utils/helpers";
// import useCloneClient from "./useCloneClient";
// import useDeleteClient from "./useDeleteClient";

const Service = styled.div`
  font-weight: 500;
  padding-right: 4rem;
`;

const ServiceRow = ({ service }) => {
  const navigate = useNavigate();
  // const { isCloneLoading, cloneClient } = useCloneClient();
  // const { isDeleteLoading, deleteClient } = useDeleteClient();
  const accessToken = useAccessToken();

  const {
    service_id,
    service_name,
    service_description,
    service_price,
    service_type,
  } = service;

  return (
    <Table.Row>
      <Service>{service_name}</Service>
      <div>{service_type}</div>
      <div>{formatPrice(service_price)}</div>

      <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={service_id} />

            <Menus.List id={service_id}>
              {/* <Modal.OpenButton opens="client-edit">
                <Menus.Button icon={<HiPencil />}>Edit</Menus.Button>
              </Modal.OpenButton> */}

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
          {/* <Modal.Window name="client-edit">
            <AddEditClient clientToEdit={client} />
          </Modal.Window> */}
          <Modal.Window name="service-clone">
            <ConfirmModal
              resourceName="service"
              operation="clone"
              // onConfirm={() => cloneClient({ service_id, accessToken })}
              // disabled={isCloneLoading}
            />
          </Modal.Window>
          <Modal.Window name="service-delete">
            <ConfirmModal
              resourceName="service"
              operation="delete"
              // connectedResurces={project_per_client !== 0}
              // onConfirm={() => deleteClient({ client_id, accessToken })}
              // disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div>
    </Table.Row>
  );
};

export default ServiceRow;
