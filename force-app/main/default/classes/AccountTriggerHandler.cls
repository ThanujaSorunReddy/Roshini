public class AccountTriggerHandler
{
	public static void copyBillingToShipping(List<Account> accList)
    {
        for(Account acc :accList)
        {
            if(acc.copyBillingToShipping__c)
            {
				acc.ShippingCity = acc.BillingCity;
				acc.ShippingCountry = acc.BillingCountry;
				acc.ShippingPostalCode= acc.BillingPostalCode; 
                acc.ShippingState=acc.BillingState;
                acc.ShippingStreet=acc.BillingStreet;
           
            }
        }
    }
}