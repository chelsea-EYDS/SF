public with sharing class DynamicSosl {
  public static List<List<SObject>> SOSL(
    String searchValue,
    String searchFields,
    Map<String, List<String>> returnObjects
  ) {
    String query =
      'FIND \'' +
      searchValue +
      '\' IN ' +
      searchFields +
      ' FIELDS RETURNING ';

    for (String objectName : returnObjects.keySet()) {
      query = query + objectName + '(';

      for (String field : returnObjects.get(objectName)) {
        query = query + field + ', ';
      }

      query = query.left(query.length() - 1) + '),';
    }

    query = query.left(query.length() - 1);

    return (List<List<SObject>>) search.query(query);
  }
}
