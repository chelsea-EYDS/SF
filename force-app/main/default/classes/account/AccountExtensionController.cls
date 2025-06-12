/**
 * Examples of extending controllers
 */
public class AccountExtensionController {
  // pass in the StandardControllercontroller or StandardSetControllercontroller (if you have to the constructor

  public AccountExtensionController(
    ApexPages.StandardSetController stdController
  ) {
  }

  public PageReference newRecord() {
    return new PageReference('/001/e');
  }
}
