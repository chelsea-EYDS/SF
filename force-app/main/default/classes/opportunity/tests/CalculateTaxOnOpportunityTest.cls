@IsTest
public class CalculateTaxOnOpportunityTest {
  @IsTest
  public static void main() {
    Account acc = new Account();
    acc.Name = 'Test';
    insert acc;

    Opportunity o = new Opportunity();
    o.Name = 'Test';
    o.StageName = 'Prospecting';
    o.CloseDate = Date.today();
    o.Amount = 100;
    o.Tax_Percentage__c = 5;
    o.AccountId = acc.Id;
    insert o;

    Opportunity testOpp = [
      SELECT Id, Amount, Tax_Percentage__c
      FROM Opportunity
      WHERE Name = 'Test'
    ];
    System.debug(testOpp);

    // testOpp.Amount += 100;

    // update testOpp;

    // Opportunity updatedTestOpp = [Select Id, Amount, Tax_Percentage__c from Opportunity where Name='Test'];

    // System.debug(updatedTestOpp);

    // System.assert(updatedTestOpp.Amount == 200, 'Condition is False');
  }
}
