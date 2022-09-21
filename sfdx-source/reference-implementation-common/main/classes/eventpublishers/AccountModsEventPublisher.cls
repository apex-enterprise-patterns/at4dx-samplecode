public class AccountModsEventPublisher {
    public static void publishChangedAccount( Set<Id> accountIdSet ) {
        // Setup and save the AT4DXMessage__e
        AT4DXMessage__e platformEventbus = new AT4DXMessage__e();
        platformEventbus.EventName__c = 'ACCOUNT_RECORD_MODIFICATION';
        platformEventbus.Category__c = Account.getSObjectType().getDescribe().getName();

        // Serialize the accountIdSet 
        platformEventbus.Payload__c = JSON.serialize( accountIdSet );

        Database.SaveResult sr = EventBus.publish(platformEventbus);
    }
}
