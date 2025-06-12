@IsTest
public class AccountExtensionPageTest {
  @TestSetup
  public static void void() {
    TestDataFactory.generateAccountWithContacts(10, 3);
  }

  @IsTest
  public static void runTest() {
    PageReference pageRef = Page.AccountExtensionPage;
    Test.setCurrentPage(pageRef);
    Test.startTest();
    List<Account> accts = [SELECT Id FROM Account];
    ApexPages.StandardSetController stdController = new ApexPages.StandardSetController(
      accts
    );
    AccountExtensionController ctlr = new AccountExtensionController(
      stdController
    );
    PageReference pageRef2 = ctlr.newRecord();
    Test.stopTest();
    Assert.areEqual('/001/e', pageRef2.getUrl());
  }
}
