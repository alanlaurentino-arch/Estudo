// @odata service PetList {
//   entity Pets {
//     key name:String; animaltype:String; race:String;
//   }
// }
using {petstore as db} from '../db/schema';

service PetList {
  entity Pets     as projection on db.Pets
    excluding {
      createdAt,
      createdBy,
      modifiedAt,
      modifiedBy

    };

  entity Branches as
    projection on db.Branches
    excluding {
      createdAt,
      createdBy,
      modifiedAt,
      modifiedBy

    };
}
