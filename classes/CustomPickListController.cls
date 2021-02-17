public class CustomPickListController {
    public List<selectOption> getStateList() {
       List<selectOption> statelist = new List<selectOption>();
       statelist.add('Maharashtra');
       statelist.add('Karnataka');
       statelist.add('Tamilnadu');
       statelist.add('Gujrat');

       return statelist;
    }
}