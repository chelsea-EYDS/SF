public with sharing class CalculateTaxOnOpportunity {
  public static void main(
    List<Opportunity> newList,
    Map<Id, Opportunity> oldList
  ) {
    for (Opportunity opp : newList) {
      if (opp.Tax_Percentage__c == null) {
        opp.Tax_Percentage__c = 5;
      }
      if (opp.Amount != null) {
        Opportunity oldOp = oldList.get(opp.Id);
        if (
          oldOp.Amount != opp.Amount ||
          oldOp.Tax_Percentage__c != opp.Tax_Percentage__c
        ) {
          opp.Tax__c = opp.Amount * (opp.Tax_Percentage__c / 100);
          opp.Total_Price__c = opp.Tax__c + opp.Amount;
        }
      }
    }
  }
  public static void mainInsert(List<Opportunity> newList) {
    for (Opportunity opp : newList) {
      if (opp.Amount != null) {
        if (opp.Tax_Percentage__c == null) {
          opp.Tax_Percentage__c = 5;
        }
        opp.Tax__c = opp.Amount * (opp.Tax_Percentage__c / 100);
        opp.Total_Price__c = opp.Tax__c + opp.Amount;
      }
    }
  }
}
