public class CustomPickListController {
    public String StateValue{get; set;}
    public List<SelectOption> getStateList() {
       List<SelectOption> StateList = new List<SelectOption>();
       statelist.add(new SelectOption('Maharashtra', 'Maharashtra'));
       statelist.add(new SelectOption('Karnataka','Karnataka'));
       statelist.add(new SelectOption('Tamilnadu','Tamilnadu'));
       statelist.add(new SelectOption('Gujrat','Gujrat'));
       return StateList;
    }

    public void go(){
        System.debug(StateValue);
    }
}