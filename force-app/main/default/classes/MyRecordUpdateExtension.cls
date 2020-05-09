public with sharing class MyRecordUpdateExtension {
    public Id recordId { get; set; }
    public String name { get; set; }
    public MyRecordUpdateExtension(ApexPages.StandardController con) {
        this.recordId = ApexPages.currentPage().getParameters().get('id');
    }
    public void updateName() {
        new MyRecordUpdate().updateName(recordId, name);
    }
    public void changeOwnerToMe() {
        new MyRecordUpdate().changeOwnerToMe(recordId);
    }
    public void changeOwnerToMeUsingQuery() {
        new MyRecordUpdate().changeOwnerToMeUsingQuery(recordId);
    }
}