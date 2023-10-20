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
  HiDocumentArrowDown,
} from "react-icons/hi2";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";

import ConfirmModal from "../../ui/ConfirmModal";
import { formatDate } from "../../utils/helpers";
import useCloneOffer from "./useCloneOffer";
import useDeleteOffer from "./useDeleteOffer";

const Offer = styled.div`
  font-weight: 500;
  padding-right: 4rem;
`;

const Type = styled.div`
  text-transform: lowercase;
`;

const CellIcon = styled.div`
  display: flex;
  justify-content: center;

  & svg {
    width: 2rem;
    height: 2rem;
    margin: auto;
  }
`;

const Link = styled.div`
  cursor: pointer;
  &:hover {
    color: ${(props) => props.theme.colors.primary[700]};
  }
`;

const OfferRow = ({ offer }) => {
  const { isCloneLoading, cloneOffer } = useCloneOffer();
  const { isDeleteLoading, deleteOffer } = useDeleteOffer();
  const accessToken = useAccessToken();
  const navigate = useNavigate();

  const {
    offer_id,
    offer_number,
    offer_client_id,
    client_name,
    offer_client_adresse,
    offer_project_id,
    project_name,
    offer_type,
    offer_extra,
    offer_date,
    offer_pdf,
  } = offer;

  return (
    <Table.Row>
      <div>{formatDate(offer_date)}</div>
      <Offer>{offer_number}</Offer>
      <Link onClick={() => navigate(`/clients/${offer_client_id}`)}>
        {client_name}
      </Link>
      <Link onClick={() => navigate(`/projects/${offer_project_id}`)}>
        {project_name}
      </Link>
      <Type>{offer_type}</Type>
      <CellIcon>
        {offer_pdf ? (
          <a href={offer_pdf} target="_blank" title={offer_pdf}>
            <HiDocumentArrowDown />
          </a>
        ) : (
          <HiMinus />
        )}
      </CellIcon>

      <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={offer_id} />

            <Menus.List id={offer_id}>
              <Menus.Button icon={<HiPencil />}>Edit</Menus.Button>

              <Modal.OpenButton opens="offer-clone">
                <Menus.Button icon={<HiOutlineDocumentDuplicate />}>
                  Duplicate
                </Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="offer-delete">
                <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
              </Modal.OpenButton>
            </Menus.List>
          </Menus>

          <Modal.Window name="offer-clone">
            <ConfirmModal
              resourceName="offer"
              operation="clone"
              onConfirm={() => cloneOffer({ offer_id, accessToken })}
              disabled={isCloneLoading}
            />
          </Modal.Window>
          <Modal.Window name="offer-delete">
            <ConfirmModal
              resourceName="offer"
              operation="delete"
              connectedResurces={false}
              onConfirm={() => deleteOffer({ offer_id, accessToken })}
              disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div>
    </Table.Row>
  );
};

export default OfferRow;
