using my.bookshop as my from '../db/data-model';
using {ConfigProd as external} from './external/ConfigProd.csn';

service CatalogService @(impl: './cat-service.js') {
    // @readonly entity Books as projection on my.Books;
   
   // Location - Product Config API with Validity Dates
    entity getLocProdCharAPI  as projection on external.getLocProdCharAPI;
    entity getLocProdConfigAPI  as projection on external.getLocProdConfigAPI;
    // Location/Product/Act/Demand
    entity getLocProdActDemandAPI as projection on external.getLocProdActDemandAPI;
    entity getLocProdActualDemandAPI as projection on external.getLocProdActualDemandAPI;
    entity getLocProdActDemandAPICopy as projection on external.getLocProdActDemandAPI;
    entity getClassCharAPI as projection on external.getClassCharAPI;
    // API of Master Data for Assembly
    entity getMDTAssembly as projection on external.getMDTAssembly;
}
