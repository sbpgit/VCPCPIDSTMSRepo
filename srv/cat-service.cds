using my.bookshop as my from '../db/data-model';
using {ConfigProd as external} from './external/ConfigProd.csn';

service CatalogService @(impl: './cat-service.js') {
    // @readonly entity Books as projection on my.Books;
     entity getLocProdCharAPI  as projection on external.getLocProdCharAPI;
    // Location/Product/Act/Demand
    entity getLocProdActDemandAPI as projection on external.getLocProdActDemandAPI;
    entity getLocProdActDemandAPICopy as projection on external.getLocProdActDemandAPI;
    entity getClassCharAPI as projection on external.getClassCharAPI;
}
