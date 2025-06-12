@isTest
public class TestDataFactory {
  public static Account getAccount(String name, Boolean doInsert) {
    Account a = new Account(name = name);
    if (doInsert) {
      insert a;
    }
    return a;
  }
  public static Contact getContact(
    Id accountId,
    String fname,
    String lname,
    Boolean doInsert
  ) {
    Contact c = new Contact(
      firstName = fname,
      lastName = lname,
      accountId = accountId
    );
    if (doInsert) {
      insert c;
    }
    return c;
  }

  public static void generateAccountWithContacts(
    Integer numAccts,
    Integer numContactsPerAcct
  ) {
    List<Account> accts = new List<Account>();

    for (Integer i = 0; i < numAccts; i++) {
      Account a = new Account(Name = 'TestAccount' + i);
      accts.add(a);
    }
    insert accts;

    List<Contact> cons = new List<Contact>();
    for (Integer j = 0; j < numAccts; j++) {
      Account acct = accts[j];
      // For each account just inserted, add contacts
      for (
        Integer k = numContactsPerAcct * j;
        k < numContactsPerAcct * (j + 1);
        k++
      ) {
        cons.add(
          new Contact(
            firstname = 'Test' + k,
            lastname = 'Test' + k,
            AccountId = acct.Id
          )
        );
      }
    }
    // Insert all contacts for all accounts
    insert cons;
  }
  public static Opportunity[] generateOppsForAccount(
    id accountId,
    Decimal amount,
    Integer numOpps
  ) {
    List<Opportunity> opps = new List<Opportunity>();
    for (Integer i = 0; i < numOpps; i++) {
      Opportunity o = new Opportunity();
      o.name = 'Account ' + i;
      o.accountId = accountid;
      o.amount = amount;
      o.closeDate = Date.today().addDays(5);
      o.stageName = 'Prospecting';
      opps.add(o);
    }
    return opps;
  }
  public static User generateUser(String profileName) {
    UserRole userRole = new UserRole(
      DeveloperName = 'TestingTeam',
      Name = 'Testing Team'
    );
    insert userRole;
    User u = new User(
      ProfileId = [SELECT Id FROM Profile WHERE Name = :profileName]
      .Id,
      LastName = 'last',
      Email = 'Cpt.Awesome@awesomesauce.com',
      Username = 'Cpt.Awesome.' +
        DateTime.now().getTime() +
        '@awesomesauce.com',
      CompanyName = 'Testing Co',
      Title = 'Captian',
      Alias = 'alias',
      TimeZoneSidKey = 'America/Los_Angeles',
      EmailEncodingKey = 'UTF-8',
      LanguageLocaleKey = 'en_US',
      LocaleSidKey = 'en_US',
      UserRoleId = userRole.Id
    );
    insert u;
    return u;
  }
}
