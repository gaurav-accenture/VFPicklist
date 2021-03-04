public class CustomPickListController {
    public String StateValue{get; set;}
    public String CityValue{get; set;}
    public Map<String, List<SelectOption>> SCMap {get; set;}

    public CustomPickListController(){
        SCMap = new Map<String, List<SelectOption>>();
        for(States__c s: [SELECT name, cities__c from states__c]){
            List<SelectOption> cities = new List<SelectOption>();
            cities.add(new SelectOption('', '--NOT SELECTED--'));
            for(String city : s.cities__c.split('\r\n')){
                cities.add(new SelectOption(city,city)); 
            }
            SCMap.put(s.name, cities);
        }
    }

    public List<SelectOption> getStateList() {
       List<SelectOption> StateList = new List<SelectOption>();
       statelist.add(new SelectOption('', '--NOT SELECTED--'));
       for(String s : SCMap.keySet()){
           statelist.add(new SelectOption(s, s));
       }
       return StateList;
    }

    public List<SelectOption> getCityList(){
        List<SelectOption> CityList = SCMap.get(StateValue);
        return CityList;
    }

    public void SetValue(){
        if(statevalue != null && CityValue != null){
            System.debug('State: '+StateValue + '--------------------- City: ' + CityValue);
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, 'State: '+statevalue+' City: '+CityValue));
        }else {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please Select Appropriate State and City.'));
        }
    }

}