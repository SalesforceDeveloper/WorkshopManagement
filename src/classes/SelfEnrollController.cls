public class SelfEnrollController {
    // Variables
    private Id workshopId {get; set;}
    public Workshop__c workshopInstance {get; set;}
    public Trainee__c traineeInstance {get; set;}
    public Boolean isRegistered {get; set;}

    public SelfEnrollController() {
        workshopId = Apexpages.currentPage().getParameters().get('workshopid');
        traineeInstance = new Trainee__c();
        System.debug('workshopId -->' + workshopId);
        if (workshopId != null) {
            workshopInstance = [SELECT Id, Name, Description__c FROM Workshop__c WHERE Id =: workshopId];
        }
    }

    public void regiterTrainee() {
        System.debug('traineeInstance -->' + traineeInstance);
        if (workshopId != null) {
            traineeInstance.Workshop__c = workshopId;
        }
        //insert traineeInstance;
        isRegistered = true;
    }
}