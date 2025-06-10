/**
 * Future Method
 * Methods called and run async
 * runs async - future method runs in background
 * LIMITS: Only 250,000 future methods may be used, or, 200*#licenses in org
 */
global class FutureExample {
  // No object can be passed!!
  // pass primitive data types only!!
  @future
  global static void futureMethod(List<Id> recordsIds) {
    // perform some opps
  }
}
