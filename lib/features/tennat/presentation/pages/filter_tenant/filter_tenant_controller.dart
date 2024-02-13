part of'filter_tenant_imports.dart';


class FilterTenantController{
  final ObsValue<ContractTypes> selectTypeObs = ObsValue<ContractTypes>.withInit(ContractTypes.non);
  final ObsValue<TenantVisibility> selectStatusObs = ObsValue<TenantVisibility>.withInit(TenantVisibility.non);
}