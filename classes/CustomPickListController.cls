public class CustomPickListController {
    public List<SelectOption> getStateList() {
       List<SelectOption> statelist = new List<SelectOption>();
       statelist.add(new SelectOption('Maharashtra', 'Maharashtra'));
       statelist.add(new SelectOption('Karnataka','Karnataka'));
       statelist.add(new SelectOption('Tamilnadu','Tamilnadu'));
       statelist.add(new SelectOption('Gujrat','Gujrat'));
       return statelist;
    }
}