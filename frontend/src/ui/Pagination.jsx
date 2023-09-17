import { HiChevronLeft, HiChevronRight } from "react-icons/hi2";
import { useSearchParams } from "react-router-dom";
import styled from "styled-components";

import { PAGE_SIZE } from "../utils/constants";

const StyledPagination = styled.div`
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
`;

const P = styled.p`
  font-size: 1.4rem;
  margin-left: 0.8rem;

  & span {
    font-weight: 600;
  }
`;

const Buttons = styled.div`
  display: flex;
  gap: 0.6rem;
`;

const PaginationButton = styled.button`
  background-color: ${(props) =>
    props.active
      ? props.theme.baseColors.grey500
      : props.theme.baseColors.grey50};
  color: "inherit";
  border: none;
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  font-weight: 500;
  font-size: 1.4rem;

  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.4rem;
  padding: 0.6rem 1.2rem;
  transition: all 0.3s;

  &:has(span:last-child) {
    padding-left: 0.4rem;
  }

  &:has(span:first-child) {
    padding-right: 0.4rem;
  }

  & svg {
    height: 1.8rem;
    width: 1.8rem;
  }

  &:hover:not(:disabled) {
    background: ${(props) => props.theme.baseColors.grey500};
    color: #fff;
  }
  &:focus {
    outline: none;
  }
`;

const Pagination = ({ count }) => {
  const [searchParams, setSearchParams] = useSearchParams();

  const currentPage = !searchParams.get("page") ? 1 : +searchParams.get("page");
  const pageCount = Math.ceil(count / PAGE_SIZE);

  const nextPage = () => {
    if (currentPage === pageCount) return;
    searchParams.set("page", currentPage + 1);
    setSearchParams(searchParams);
  };

  const prevPage = () => {
    if (currentPage === 1) return;
    searchParams.set("page", currentPage - 1);
    setSearchParams(searchParams);
  };

  //if (pageCount <= 1) return null;

  return (
    <StyledPagination>
      <p>
        Showing{" "}
        <span>{currentPage === 1 ? 1 : (currentPage - 1) * PAGE_SIZE + 1}</span>{" "}
        to{" "}
        <span>
          {currentPage !== pageCount ? PAGE_SIZE * currentPage : count}
        </span>{" "}
        of <span>{count}</span> results
      </p>
      <Buttons>
        <PaginationButton onClick={prevPage} disabled={currentPage === 1}>
          <HiChevronLeft />
          <span>Previus</span>
        </PaginationButton>

        <PaginationButton
          onClick={nextPage}
          disabled={currentPage === pageCount}
        >
          <span>Next</span>
          <HiChevronRight />
        </PaginationButton>
      </Buttons>
    </StyledPagination>
  );
};

export default Pagination;
