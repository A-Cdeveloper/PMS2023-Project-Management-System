import toast from "react-hot-toast";
import Headline from "../ui/Headline";
import { useCurrentUser } from "../context/authContext";

const Dashboard = () => {
  const context = useCurrentUser();

  console.log(context);

  return (
    <>
      <Headline as="h1">Dashboard</Headline>

      <p>
        Voluptate consectetur anim laborum excepteur velit eiusmod sint ea
        aliquip commodo ea excepteur est est. Ipsum proident commodo duis
        proident aute excepteur deserunt officia ex ipsum officia. Officia
        aliqua et duis amet eu do. Deserunt tempor cupidatat aute nostrud.
        Cupidatat non anim officia id deserunt consectetur officia quis dolore.
        Sit nulla tempor consequat consectetur esse. In id eu culpa mollit
        occaecat ipsum nisi id culpa sit ut aliqua in. Voluptate eiusmod est
        deserunt officia commodo reprehenderit reprehenderit. Nisi incididunt
        eiusmod id qui qui dolore fugiat magna aute anim voluptate. Enim anim
        mollit cillum exercitation aliqua occaecat ut ea. Sit aliquip magna ut
        nisi dolore id adipisicing consequat aliquip id voluptate. Qui
        consectetur magna eu do culpa sint. Proident ea enim pariatur anim nisi
        eu dolor laborum fugiat ad. Nisi ullamco laborum non sunt duis esse
        reprehenderit laboris mollit est cupidatat cillum quis incididunt.
        Labore in amet aute aliqua magna labore adipisicing do. Nulla nostrud
        culpa reprehenderit officia aute amet magna reprehenderit id culpa ex
        elit occaecat labore. Non laboris anim ullamco ullamco duis irure
        ullamco occaecat excepteur tempor excepteur exercitation. In duis
        eiusmod proident mollit. Anim laboris pariatur aliquip ipsum eu irure
        aliqua mollit. Pariatur ad nulla incididunt anim sint id irure. Elit
        anim cupidatat ipsum deserunt deserunt. Fugiat do do reprehenderit
        cillum officia esse velit id sunt non dolore do qui. Fugiat irure
        proident mollit consectetur incididunt esse amet cillum elit ea aute
        excepteur Lorem. Anim excepteur exercitation officia in Lorem ipsum
        occaecat exercitation Lorem excepteur et magna dolor cillum. Ea do
        aliquip fugiat qui excepteur incididunt ipsum consequat nulla dolore
        cillum sunt voluptate. Cupidatat consequat nulla occaecat et cillum anim
        officia aliquip eu aliqua pariatur pariatur deserunt id. Deserunt
        occaecat deserunt commodo ipsum aliquip aliquip adipisicing et
        consectetur. Commodo consectetur officia excepteur enim consectetur est
        ipsum amet. Mollit dolore veniam consectetur est labore elit est Lorem
        ut. Adipisicing quis duis minim enim sit est officia aliquip
        exercitation aliqua. Id duis aute eu excepteur exercitation dolor ex
        laboris do duis dolore. Voluptate laboris enim cillum in ad. Nulla
        dolore laborum non dolor quis magna amet in sit. Exercitation quis sint
        officia consectetur amet enim velit nulla dolore dolore eiusmod sit.
        Cupidatat quis voluptate pariatur minim duis consectetur magna id amet.
        Duis cupidatat veniam aliquip excepteur nulla ad est dolor do non
        reprehenderit sint mollit officia. Ut eu laborum id excepteur veniam
        aliquip dolore Lorem. Incididunt adipisicing sit minim anim ut et veniam
        officia aliquip cupidatat occaecat commodo. Labore fugiat commodo
        laborum minim cillum irure tempor exercitation velit sit. Occaecat
        occaecat ea nostrud duis Lorem ad dolore laborum ea est amet. Occaecat
        elit anim incididunt aliqua exercitation nulla. Adipisicing anim ipsum
        laboris enim dolore anim sint do dolore esse amet. Fugiat cupidatat
        ullamco sunt aute ullamco exercitation pariatur mollit minim ullamco
        Lorem amet commodo sint. Adipisicing voluptate excepteur adipisicing
        nulla magna sunt nostrud tempor quis aliqua pariatur duis veniam.
        Nostrud ut id labore ex sunt amet enim. Pariatur et voluptate non dolor.
        Eiusmod laborum excepteur esse nulla ad non ad ea non ex est
        exercitation sunt. Adipisicing culpa aute reprehenderit mollit dolore
        reprehenderit sint enim qui Lorem labore duis. Qui laboris cupidatat
        aliquip quis dolor cupidatat ex laboris. In cillum sunt nisi sint
        proident excepteur duis deserunt sit dolore Lorem. Mollit enim duis
        nostrud dolor consectetur. Culpa consectetur ut voluptate cupidatat
        cupidatat nulla. Ea consectetur eu quis eu reprehenderit non commodo
        aute et. Deserunt eu sint eiusmod ipsum dolore nulla nostrud consequat
        laborum sunt Lorem laborum id. Ut exercitation eiusmod culpa minim
        pariatur culpa occaecat ullamco enim sunt irure et. reprehenderit
        laboris mollit est cupidatat cillum quis incididunt. Labore in amet aute
        aliqua magna labore adipisicing do. Nulla nostrud culpa reprehenderit
        officia aute amet magna reprehenderit id culpa ex elit occaecat labore.
        Non laboris anim ullamco ullamco duis irure ullamco occaecat excepteur
        tempor excepteur exercitation. In duis eiusmod proident mollit. Anim
        laboris pariatur aliquip ipsum eu irure aliqua mollit. Pariatur ad nulla
        incididunt anim sint id irure. Elit anim cupidatat ipsum deserunt
        deserunt. Fugiat do do reprehenderit cillum officia esse velit id sunt
        non dolore do qui. Fugiat irure proident mollit consectetur incididunt
        esse amet cillum elit ea aute excepteur Lorem. Anim excepteur
        exercitation officia in Lorem ipsum occaecat exercitation Lorem
        excepteur et magna dolor cillum. Ea do aliquip fugiat qui excepteur
        incididunt ipsum consequat nulla dolore cillum sunt voluptate. Cupidatat
        consequat nulla occaecat et cillum anim officia aliquip eu aliqua
        pariatur pariatur deserunt id. Deserunt occaecat deserunt commodo ipsum
        aliquip aliquip adipisicing et consectetur. Commodo consectetur officia
        excepteur enim consectetur est ipsum amet. Mollit dolore veniam
        consectetur est
      </p>
    </>
  );
};

export default Dashboard;
