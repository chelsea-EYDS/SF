trigger Opportunity on Opportunity(before insert, before update) {
  if (Trigger.isBefore) {
    if (Trigger.isInsert) {
      System.debug('New Trigger on insert' + ' ' + Trigger.new);
      CalculateTaxOnOpportunity.beforeInsert(Trigger.new);
    }
    if (Trigger.isUpdate) {
      CalculateTaxOnOpportunity.beforeUpdate(Trigger.new, Trigger.oldMap);
    }
  }
}
