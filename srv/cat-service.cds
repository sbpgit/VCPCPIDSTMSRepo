using my.bookshop as my from '../db/data-model';
using {ConfigProd as external} from './external/ConfigProd.csn';

service CatalogService @(impl: './cat-service.js') {
    // @readonly entity Books as projection on my.Books;
     entity getLocProdCharAPI  as projection on external.getLocProdCharAPI {
        key LOCATION_ID,
            LOCATION_DESC,
            PRODUCT_ID,
            PROD_DESC,
            PROD_TYPE,
            CUSTOMER_GROUP,
            IBP_CUSTOMER,
            CLASS_NUM,
            CLASS_NAME,
            CLASS_DESC,
            CHAR_NUM,
            CHAR_NAME,
            CHAR_DESC,
            CHARVAL_NUM,
            CHAR_VALUE,
            CHARVAL_DESC,
            IBPCHAR_CHK
    };
    // Location/Product/Act/Demand
    entity getLocProdActDemandAPI as projection on external.getLocProdActDemandAPI {
        LOCATION_ID ,
        PRODUCT_ID ,
        REF_PRODID,
        IBP_CUSTOMER,
        WEEK_DATE,
        CLASS_NUM,
        CHAR_NUM,
        CHARVAL_NUM,
        IBPCHAR_CHK,
        ORD_QTY,
        ADJ_QTY
    };
    entity getLocProdActDemandAPICopy as projection on external.getLocProdActDemandAPI;
    entity getClassCharAPI as projection on external.getClassCharAPI;
}
