using {  managed } from '@sap/cds/common';

namespace petstore;

entity Pets : managed {
  key name : String;
  animaltype  : localized String;
  race  : localized String;
 
}

