import { formatDateTime } from "../../utils/helpers";
import { useCurrentUserTokens } from "../../context/authContext";
import styled from "styled-components";
import useDeleteUser from "./useDeleteUser";
import useChangeRole from "./useChangeRole";

import { userRoles } from "./UserParameters";

import { HiOutlineCheck, HiOutlineMinus, HiTrash } from "react-icons/hi2";

import Table from "../../ui/Data/Table";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";
import ConfirmModal from "../../ui/ConfirmModal";
import Select from "../../ui/Form/Select";

const User = styled.div`
  font-weight: 500;
  padding-right: 1rem;
`;

const CellIcon = styled.div`
  display: flex;

  & svg {
    width: 2rem;
    height: 2rem;
    margin: auto;
    // margin: 0 0.5rem;
  }
`;

const UserRow = ({ user }) => {
  const { user: logedUser } = useCurrentUserTokens();
  const { isDeleteLoading, deleteUser } = useDeleteUser();
  const { isEditLoading, changeUserRole } = useChangeRole();

  const { accessToken } = logedUser;

  const {
    uid: user_id,
    first_name,
    last_name,
    username,
    email,
    created_date,
    last_login,
    role,
    verified,
  } = user;

  //console.log(user);

  const isCurrentLogedUser = user_id === logedUser.uid;

  return (
    <Table.Row type={isCurrentLogedUser ? "logedUser" : null}>
      <User>{first_name}</User>
      <div>{last_name}</div>
      <div>{username}</div>
      <div>{email}</div>
      <div>{formatDateTime(created_date)}</div>
      <div>{formatDateTime(last_login)}</div>

      <div>
        {!isCurrentLogedUser ? (
          <Select
            defaultValue={role}
            onChange={(e) => {
              const newRole = e.target.value;
              changeUserRole({ user_id, newRole, accessToken });
            }}
            disabled={isEditLoading}
          >
            {userRoles().map((role, index) => {
              return index !== 0 ? (
                <option key={role.label} value={role.value}>
                  {role.label}
                </option>
              ) : null;
            })}
          </Select>
        ) : (
          role
        )}
      </div>

      <CellIcon>
        {verified === "1" ? <HiOutlineCheck /> : <HiOutlineMinus />}
      </CellIcon>

      <div>
        {role !== "admin" && (
          <Modal>
            <Menus>
              <Menus.Toggle id={user_id} />

              <Menus.List id={user_id}>
                <Modal.OpenButton opens="user-delete">
                  <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
                </Modal.OpenButton>
              </Menus.List>
            </Menus>

            <Modal.Window name="user-delete">
              <ConfirmModal
                resourceName="user"
                operation="delete"
                onConfirm={() => deleteUser({ user_id, accessToken })}
                disabled={isDeleteLoading}
              />
            </Modal.Window>
          </Modal>
        )}
      </div>
    </Table.Row>
  );
};

export default UserRow;
