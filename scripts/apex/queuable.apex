

// this can be any object
List<Account> accts = [SELECT Id FROM Account];
Id jobId =System.enqueueJob(new QueueableExample(accts));
System.debug(jobId);