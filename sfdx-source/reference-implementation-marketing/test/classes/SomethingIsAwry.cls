public with sharing class SomethingIsAwry {
    public List<Account> run(String slogan){
        SelectBySloganSelectorMethod.Parameters queryParams = new SelectBySloganSelectorMethod.Parameters();
        queryParams.sloganNameSet = new Set<String>{slogan};

        return AccountsSelector.newInstance().selectInjection( SelectBySloganSelectorMethod.class, queryParams);
    }
}