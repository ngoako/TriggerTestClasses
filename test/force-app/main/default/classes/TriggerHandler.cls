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
}