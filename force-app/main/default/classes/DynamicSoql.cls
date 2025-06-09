public with sharing class DynamicSoql {
  public static List<SObject> SOQL(
    List<String> fields,
    String sobjectType,
    String filterField,
    String filterValue
  ) {
    String query = '`SELECT ';
    for (String field : fields) {
      query += field + ', ';
    }
    query = query.left(query.length() - 2) + ' FROM ' + sobjectType;

    if (
      filterField != null &&
      filterField != '' &&
      filterValue != null &&
      filterValue != ''
    ) {
      query += ' WHERE ' + filterField + ' = \'' + filterValue + '\'';
    }
    List<SObject> results = Database.query(query);
    return results;
  }
}
