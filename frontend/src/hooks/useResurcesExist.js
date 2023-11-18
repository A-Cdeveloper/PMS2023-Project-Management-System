// import { useQueryClient } from "@tanstack/react-query";

// const useResurcesExist = (resurses) => {
//   const queryClient = useQueryClient();
//   const resursArray =
//     queryClient.getQueryData([resurses], { exact: false }) || [];
//   console.log(resursArray);
//   if (resursArray.length === 0) {
//     queryClient.removeQueries([resurses], { exact: false });
//   }

//   return { isResurcesExist: resursArray.length !== 0 };
// };

// export default useResurcesExist;
