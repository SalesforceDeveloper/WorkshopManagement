/**
 * This class will be used by Site pages so that trainees can enroll themselves
 *
 * @author : workalonesf@gmail.com
 */
public class SelfEnrollController {
    // Variables
    private Id workshopId {get; set;}
    public Workshop__c workshopInstance {get; set;}
    public Trainee__c traineeInstance {get; set;}
    public Boolean isRegistered {get; set;}

    public SelfEnrollController() {
        workshopId = Apexpages.currentPage().getParameters().get('workshopid');
        traineeInstance = new Trainee__c();
        if (workshopId != null) {
            workshopInstance = [SELECT Id, Name, Description__c FROM Workshop__c WHERE Id =: workshopId];
        }
    }

    public void regiterTrainee() {
        if (workshopId != null) {
            traineeInstance.Workshop__c = workshopId;
        }
        insert traineeInstance;
        isRegistered = true;
    }
}