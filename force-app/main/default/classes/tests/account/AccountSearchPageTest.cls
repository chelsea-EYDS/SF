@isTest
public class AccountSearchPageTest {
  @TestSetup
  public static void setup() {
    TestDataFactory.generateAccountWithContacts(3, 3);
  }
  @isTest
  public static void acctTest() {
    PageReference pageRef = Page.AccountSearchPage;
    Test.setCurrentPage(pageRef);

    Test.startTest();
    AccountSearchController ctlr = new AccountSearchController();
    ctlr.searchText = 'test';
    ctlr.doSearch();
    List<Account> accts = ctlr.results;
    Test.stopTest();

    System.debug(accts.size());
    Assert.isTrue(accts.size() == 3, 'Expected 3 accounts');
  }
}
