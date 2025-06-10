/**
 * Platform Event Trigger
 * Will run whenever event is fired/data inserted (use after insert)
 */

trigger External_Event_Trigger on External_Event__e(after insert) {
  List<SObject> newObjs = new List<SObject>();

  for (External_Event__e event : Trigger.new) {
    // newObjs.add(
    //   new Object(Subject = event.System__c, Description = event.Message__c)
    // );
  }
  // must call insert since this is after the original records have been inserted
  // insert newCases;
}
