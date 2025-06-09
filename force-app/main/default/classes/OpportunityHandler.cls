public with sharing class OpportunityHandler {
  public static void beforeInsert(List<Opportunity> opps) {
    try {
    } catch (Exception e) {
      External_Event__e event = new External_Event__e();
      event.System__c = 'Salesforce';
      event.Message__c = 'Apex Exception thrown ' + e.getMessage();
      EventBus.publish(event);
    }
  }
  public static void beforeUpdate(
    Map<Id, Opportunity> newList,
    Map<Id, Opportunity> oldList
  ) {
    try {
    } catch (Exception e) {
    }
  }
}
