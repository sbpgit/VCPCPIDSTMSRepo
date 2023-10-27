using {SavedConfigAPI as externalAPI} from './external/SavedConfigAPI.csn';

service APIUIDService @(impl: './api-service.js'){
 // Saved Config APIs
 action deactivateUniqueID(vcRulesList : array of externalAPI.cp_ds_UniqueIdStatus) returns externalAPI.cp_ds_uniqueIDFnResponse;

}
