ScheduledJob m = new ScheduledJob();
String sched = '00 50 13 09 06 ?';
String jobID = system.schedule('ScheduledJob', sched, m);