public with sharing class TriggerHandler {
    public static void UpdateDescription(List<Opportunity> lstOpportunity){
        if(!lstOpportunity.isEmpty()){
            for(Opportunity opp : lstOpportunity){
                if(opp.stageName == 'Closed Lost'){
                    opp.Description = 'Make contact with the customer to try an win them back';
                }
            }
        }
    }

    public static void CreateAccount(List<Opportunity> lstOpportunity){
        List<Account> listAccount = new List<Account>();
        for(Opportunity opp : lstOpportunity){
            if(opp.Type == 'New Customer'){
                Account acc = new Account();
                acc.Name = 'Weetbix';
                acc.PersonEmail = 'Weetbix@'+ opp.Name + '.com';
                acc.RecordTypeId = '0128d000001ODfvAAG';
/* 
                acc.AccountId = opp.Id;
                listAccount.add(acc); */
            }
/*         }
        if(!listAccount.isEmpty()){
            insert listAccount;
        } */
    }
        
    }
}