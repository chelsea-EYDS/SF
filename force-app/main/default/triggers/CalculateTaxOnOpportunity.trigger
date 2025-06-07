trigger CalculateTaxOnOpportunity on Opportunity (before insert, before update) {
    
    // Calclucate the tax amount for the opp
    // Tax__c: Tax__Percent__c * Amount
    // Total_+Price__c: Amount + Tax__c
    // Do not run calc if Amount or Tax_Percentage__c are not populated then do not run
    // Do not run calc if Amount or Tax_Percentage__c are not changed then do not run

    // keep logic in a separate class
    // ensure class access is set up properly (private)
    // Trigger.newMap Trigger.oldMap to see changes between records - in Opp records both are type Map<Id, Opportunity>
    // in set trigger does not hhave ref to old records
    
    
    
    if(Trigger.isBefore && Trigger.isInsert){
        System.debug('New Trigger on insert' + ' ' + Trigger.new);
        CalculateTaxOnOpportunity.mainInsert(Trigger.new);
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        CalculateTaxOnOpportunity.main(Trigger.new, Trigger.oldMap);
    }


}