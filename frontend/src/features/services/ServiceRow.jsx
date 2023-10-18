import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { useAccessToken } from "../../context/authContext";

import styled from "styled-components";
import Table from "../../ui/Data/Table";
import {
  HiOutlineDocumentDuplicate,
  HiPencil,
  HiTrash,
  HiMinus,
} from "react-icons/hi2";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";

import ConfirmModal from "../../ui/ConfirmModal";
import { formatPrice } from "../../utils/helpers";
import useCloneService from "./useCloneService";
import useDeleteService from "./useDeleteService";
import AddEditService from "./AddEditService";

const Service = styled.div`
  font-weight: 500;
  padding-right: 4rem;
`;

const ServiceRow = ({ service }) => {
  const { isCloneLoading, cloneService } = useCloneService();
  const { isDeleteLoading, deleteService } = useDeleteService();
  const accessToken = useAccessToken();

  const {
    service_id,
    service_name,
    service_description,
    service_price_hour,
    service_price_total,
    service_type,
  } = service;

  return (
    <Table.Row>
      <Service>{service_name}</Service>
      <div>{service_type}</div>

      <div>
        {+service_price_hour !== 0 ? (
          formatPrice(service_price_hour)
        ) : (
          <HiMinus />
        )}
      </div>
      <div>
        {+service_price_total !== 0 ? (
          formatPrice(service_price_total)
        ) : (
          <HiMinus />
        )}
      </div>
      <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={service_id} />

            <Menus.List id={service_id}>
              <Modal.OpenButton opens="service-edit">
                <Menus.Button icon={<HiPencil />}>Edit</Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="service-clone">
                <Menus.Button icon={<HiOutlineDocumentDuplicate />}>
                  Duplicate
                </Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="service-delete">
                <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
              </Modal.OpenButton>
            </Menus.List>
          </Menus>
          <Modal.Window name="service-edit">
            <AddEditService serviceToEdit={service} />
          </Modal.Window>
          <Modal.Window name="service-clone">
            <ConfirmModal
              resourceName="service"
              operation="clone"
              onConfirm={() => cloneService({ service_id, accessToken })}
              disabled={isCloneLoading}
            />
          </Modal.Window>
          <Modal.Window name="service-delete">
            <ConfirmModal
              resourceName="service"
              operation="delete"
              connectedResurces={false}
              onConfirm={() => deleteService({ service_id, accessToken })}
              disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div>
    </Table.Row>
  );
};

export default ServiceRow;
