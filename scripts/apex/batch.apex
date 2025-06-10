/**
 * Method for calling the batch class
 */

String query =  'SELECT Id, Name, Type Rating FROM Account';
System.debug(Database.executeBatch(new BatchExample(query)));