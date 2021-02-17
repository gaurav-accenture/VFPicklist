public class CustomPickListController {
    public List<SelectOption> getStateList() {
       List<SelectOption> statelist = new List<SelectOption>();
       statelist.add(new SelectOption('Maharashtra'));
       statelist.add(new SelectOption('Karnataka'));
       statelist.add(new SelectOption('Tamilnadu'));
       statelist.add(new SelectOption('Gujrat'));
       return statelist;
    }
}