public class AccountTriggerHandler {
    public static void updateDiscountPercantagesAndTiers(List<Account> accounts){
        if (!accounts.isEmpty()){
            for (Account acc : accounts){
                if (acc.AnnualRevenue  != null){
                    if (acc.AnnualRevenue  >= 1000000){
                        acc.Account_Tier__c = 'Titanium';
                        acc.Account_Discount_Percentage__c = 50;
                    }
                    else if (acc.AnnualRevenue  >= 500000 && acc.AnnualRevenue  < 1000000){
                        acc.Account_Tier__c = 'Platinum';
                        acc.Account_Discount_Percentage__c = 40;
                    }
                    else if (acc.AnnualRevenue  >= 300000 && acc.AnnualRevenue  < 500000){
                        acc.Account_Tier__c = 'Gold';
                        acc.Account_Discount_Percentage__c = 30;
                    }
                    else if (acc.AnnualRevenue  >= 100000 && acc.AnnualRevenue  < 300000){
                        acc.Account_Tier__c = 'Silver';
                        acc.Account_Discount_Percentage__c = 20;
                    }
                    else{
                        acc.Account_Tier__c = 'Bronze';
                        acc.Account_Discount_Percentage__c = 10;
                    }
                }
            }
        }
    }
}