@IsTest(IsParallel=true)
private class AccountsSelectorTest 
{
    @IsTest
    private static void shouldReturnEmptyListWhenSelectByIdDoesNotExist() 
    {
        IAccountsSelector selector = AccountsSelector.newInstance();
        System.Assert.areEqual( selector.selectById( new Set<Id>{fflib_IDGenerator.generate(Account.SObjectType)} ).isEmpty()
                            , 'Expected null because record id value does not exist');
    }
}