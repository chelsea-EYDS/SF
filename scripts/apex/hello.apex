// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// string tempvar = 'Enter_your_name_here';
// Opportunity opp = [SELECT ID, Amount from Opportunity where Id = '006gL000007AHyPQAW'];
// opp.Amount = opp.Amount + 1;
// update opp;
List<Contact> contacts = [SELECT Id From Contact where Id = '003gL000005RDvxQAG'];

System.debug(SubscriptionsRollup.main(contacts));