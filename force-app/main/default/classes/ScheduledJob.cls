global class ScheduledJob implements Schedulable {
  global void execute(SchedulableContext sc) {
    insert new Account(Name = 'Scheduled Account');
  }
}
