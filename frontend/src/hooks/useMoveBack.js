import { useNavigate } from "react-router-dom";

export function useMoveBack(step) {
  if (!step) {
    step = 1;
  }
  const navigate = useNavigate();

  return () => navigate(-`${step}`);
}
