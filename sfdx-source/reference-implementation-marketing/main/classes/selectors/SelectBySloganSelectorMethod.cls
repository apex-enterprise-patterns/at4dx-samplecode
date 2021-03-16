/**
 * AT4DX Selector Method Injection class used to select accounts by the Account.Slogan__c custom field
 * specific to reference-implementation-marketing section of code
 * 
 * @Usage
 *       SelectBySloganSelectorMethod.Parameters queryParams = new SelectBySloganSelectorMethod.Parameters();
 *       queryParams.sloganNameSet = new Set<String>{ 'fishy' };
 *       List<Account> accounts = AccountsSelector.newInstance().selectInjection( SelectBySloganSelectorMethod.class, queryParams );
 */
public inherited sharing class SelectBySloganSelectorMethod
    extends AbstractSelectorMethodInjectable
    implements ISelectorMethodInjectable
{
    public List<SObject> selectQuery()
    {
        SelectBySloganSelectorMethod.Parameters params = (SelectBySloganSelectorMethod.Parameters)getParams(); 

        Set<String> sloganNameSet = params.sloganNameSet;

        return Database.query( newQueryFactory().setCondition( Account.Slogan__c + ' in :sloganNameSet').toSOQL() );
    }

    public class Parameters
        implements ISelectorMethodParameterable
    {
        public Set<String> sloganNameSet;
    }
}
