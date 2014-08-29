/**
 * This class will be used to handle all Workshop and related Attendance information for related trainess
 *
 * @author : workalonesf@gmail.com
 */
public class ConfirmAttendanceController {

    /**
     * Method to get all workshop related records
     */
    @RemoteAction
    public static List<Workshop__c> getAllWorkshopDetails() {
        List<Workshop__c> workshopList = [SELECT Id, Name, Description__c FROM Workshop__c];
        return workshopList;
    }

    /**
     * Method to get all trainees list based on workshop id passed
     */
    @RemoteAction
    public static List<Trainee__c> getAllRelatedTrainees(Id workshopId) {
        List<Trainee__c> relatesTraineeList = [SELECT Id, Name, Trainee_Email__c FROM Trainee__c WHERE Workshop__c =: workshopId];
        return relatesTraineeList;
    }
}