/**
 * Queable
 * Methods called in queuable apex must be global, public, and implement Queueable interface
 * Methods will run async
 *
 */

global class QueueableExample implements Queueable {
  List<SObject> listToProcess;

  //______CONSTRUCTOR______
  global QueueableExample(List<SObject> queueList) {
    this.listToProcess = queueList;
  }

  //_______EXECUTE________
  global void execute(QueueableContext qc) {
    // process data
    System.debug('Queuble Job Coded' + qc.getJobId());
  }
  //________FINSIH______
  global void finish(QueueableContext qc) {
    // send email etc
  }
}
