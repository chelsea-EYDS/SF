public with sharing class PlatformEventHandler {
  public static void beforeInsert(List<SObject> obj) {
    try {
    } catch (Exception e) {
      External_Event__e event = new External_Event__e();
      event.System__c = 'Salesforce';
      event.Message__c = 'Apex Exception thrown ' + e.getMessage();
      EventBus.publish(event);
    }
  }
  public static void beforeUpdate(
    Map<Id, SObject> newList,
    Map<Id, SObject> oldList
  ) {
    try {
    } catch (Exception e) {
    }
  }
}
