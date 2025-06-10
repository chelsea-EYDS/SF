


Set<Account> keySet = new Set<Account>([SELECT Id from Account]);

// from trigger pass in: Trigger.newMap.keyset()
Id jobId = System.enqueueJob(FutureExample.futureMethod(keySet.keySet() ));
System.debug(jobId);