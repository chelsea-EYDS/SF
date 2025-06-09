public with sharing class AccountHandler {
  public static void beforeInsert(List<Account> accts) {
    assignAcctNames(accts);
  }
  public static void beforeUpdate(List<Account> accts) {
    assignAcctNames(accts);
  }
  public static void assignAcctNames(List<Account> accts) {
    Map<String, String> accountNamesMap = getAccountName(
      [SELECT Label, Type__c FROM Default_Account_Name__mdt]
    );

    for (Account newAcct : accts) {
      newAcct.Name = accountNamesMap.containsKey(newAcct.Type)
        ? accountNamesMap.get(newAcct.Type)
        : newAcct.Name;
    }
  }
  public static Map<String, String> getAccountName(
    List<Default_Account_Name__mdt> names
  ) {
    Map<String, String> accountNamesMap = new Map<String, String>();
    for (Default_Account_Name__mdt name : names) {
      accountNamesMap.put(name.Type__c, name.Label);
    }
    return accountNamesMap;
  }
}
