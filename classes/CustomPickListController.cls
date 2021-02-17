public class CustomPickListController {
    public String StateValue{get; set;}
    public String CityValue{get; set;}
    public List<SelectOption> getStateList() {
       List<SelectOption> StateList = new List<SelectOption>();
       statelist.add(new SelectOption('Maharashtra', 'Maharashtra'));
       statelist.add(new SelectOption('Karnataka','Karnataka'));
       statelist.add(new SelectOption('Tamilnadu','Tamilnadu'));
       statelist.add(new SelectOption('Gujrat','Gujrat'));
       return StateList;
    }

    public List<SelectOption> getCityList(){
        List<SelectOption> CityList = new List<SelectOption>();
        if(StateValue == 'Maharashtra'){
            CityList.add(new SelectOption('Pune', 'Pune'));
            CityList.add(new SelectOption('Mumbai', 'Mumbai'));
            CityList.add(new SelectOption('Thane', 'Thane'));
            CityList.add(new SelectOption('Nashik', 'Nashik'));
        } else if(StateValue == 'Karnataka'){
            CityList.add(new SelectOption('Bengaluru', 'Bengaluru'));
            CityList.add(new SelectOption('Mangaluru', 'Mangaluru'));
            CityList.add(new SelectOption('Hubli', 'Hubli'));
            CityList.add(new SelectOption('Gulbarga', 'Gulbarga'));
        } else if(StateValue == 'Tamilnadu'){
            CityList.add(new SelectOption('Chennai', 'Chennai'));
            CityList.add(new SelectOption('Koimbatore', 'Koimbatore'));
            CityList.add(new SelectOption('Madurai', 'Madurai'));
            CityList.add(new SelectOption('Salem', 'Salem'));
        } else if(StateValue == 'Gujrat'){
            CityList.add(new SelectOption('Ahmedabad', 'Ahmedabad'));
            CityList.add(new SelectOption('Surat', 'Surat'));
            CityList.add(new SelectOption('Vadodara', 'Vadodara'));
            CityList.add(new SelectOption('Rajkot', 'Rajkot'));
        }
        return CityList;
    }

    public void go(){
        System.debug(StateValue + '---------------------' + CityValue);
    }
}