/**
 * All triggers for the account object
 *
 */
trigger AccountTrigger on Account(before insert, before update) {
  if (Trigger.isBefore) {
    if (Trigger.isInsert) {
      AccountHandler.beforeInsert(Trigger.New);
    }
    if (Trigger.isUpdate) {
      AccountHandler.beforeUpdate(Trigger.New);
    }
  }
  if (Trigger.isAfter) {
    if (Trigger.isInsert) {
      // This triggers the "future" handler
      System.enqueueJob(new AccountQueable(Trigger.newMap.keyset()));
    }
  }

}
