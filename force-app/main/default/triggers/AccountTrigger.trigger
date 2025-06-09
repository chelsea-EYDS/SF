trigger AccountTrigger on Account(before insert, before update) {
  if (Trigger.isBefore) {
    if (Trigger.isInsert) {
      AccountHandler.beforeInsert(Trigger.New);
    }
    if (Trigger.isUpdate) {
      AccountHandler.beforeUpdate(Trigger.New);
    }
  }

}
