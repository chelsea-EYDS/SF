public class PageController {
  public List<Account> results { get; set; }

  public String searchText { get; set; }

  public PageController() {
  }

  public PageReference doSearch() {
    this.results = [
      SELECT Id, Name, AccountNumber
      FROM Account
      WHERE Name LIKE :'%' + this.searchText + '%'
    ];
    return null;
  }
}
