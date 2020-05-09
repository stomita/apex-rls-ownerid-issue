public with sharing class MyRecordUpdate {
  // ...
  public void changeOwnerToMe(Id recordId) {
    MyRecord__c rec = new MyRecord__c(Id=recordId, OwnerId=UserInfo.getUserId());
    update rec;
  }

  public void changeOwnerToMeUsingQuery(Id recordId) {
    MyRecord__c rec = [SELECT Id FROM MyRecord__c WHERE Id = :recordId];
    rec.OwnerId = UserInfo.getUserId();
    update rec; // throws INSUFFICIENT_ACCESS_OR_READONLY error
  }

  public void updateName(Id recordId, String name) {
    MyRecord__c rec = new MyRecord__c(Id=recordId, Name=name);
    update rec; // throws INSUFFICIENT_ACCESS_OR_READONLY error
  }

  public void updateText01(Id recordId, String text01) {
    MyRecord__c rec = new MyRecord__c(Id=recordId, Text01__c=text01);
    update rec; // throws INSUFFICIENT_ACCESS_OR_READONLY error
  }


}