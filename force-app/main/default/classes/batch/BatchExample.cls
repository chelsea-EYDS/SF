/**
 * Batch Class
 * Can process up to 50,000,000 records - splits into 200 records per batch to be processed in execute method
 * Must have 3 methods:
 * start: Define the scope of records
 * execute: Processing each batch of records
 * finish: Post-processing
 */
global class BatchExample implements Database.Batchable<SObject> {
  global Integer count;

  global String query;

  global BatchExample(String queryString) {
    this.count = 0;
    this.query = queryString;
  }

  //_________________START____________________
  global Database.QueryLocator start(database.BatchableContext bc) {
    return Database.getQueryLocator(this.query);
  }
  //_________________EXECUTE____________________
  global void execute(Database.BatchableContext bc, List<SObject> scope) {
    // update scope
    count++;
  }
  //_________________FINISH____________________
  global void finish(Database.BatchableContext bc) {
    // could send email here with count etc
  }
}
