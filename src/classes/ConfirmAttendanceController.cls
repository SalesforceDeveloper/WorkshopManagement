public class ConfirmAttendanceController {

    @RemoteAction
    public static List<Workshop__c> getAllWorkshopDetails() {
        List<Workshop__c> workshopList = [SELECT Id, Name, Description__c FROM Workshop__c];
        return workshopList;
    }

    @RemoteAction
    public static List<Trainee__c> getAllRelatedTrainees(Id workshopId) {
        List<Trainee__c> relatesTraineeList = [SELECT Id, Name, Trainee_Email__c FROM Trainee__c WHERE Workshop__c =: workshopId];
        return relatesTraineeList;
    }
}