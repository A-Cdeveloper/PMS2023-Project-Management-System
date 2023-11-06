import { useQuery } from "@tanstack/react-query";
import { getSettings as getSettingsApi } from "../../services/apiSettings";
import { useAccessToken } from "../../context/authContext";
export const useSettings = () => {
  const accessToken = useAccessToken();

  const {
    isLoading: isLoadingSettings,
    error: errorGetSettings,
    data: settings,
  } = useQuery({
    queryKey: ["settings"],
    queryFn: () => getSettingsApi({ accessToken }),
    cacheTime: 0,
  });
  return {
    isLoadingSettings,
    errorGetSettings,
    settings,
  };
};
