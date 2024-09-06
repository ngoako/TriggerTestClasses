trigger OpportunityTrigger on Opportunity (before insert) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            TriggerHandler.UpdateDescription(Trigger.new);
        }   
    }
}