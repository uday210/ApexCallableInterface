public class BasicCallableClass implements Callable{
    public String Name;
    
    //simple constructure
    public BasicCallableClass(){
        Name = 'Test';
    }
    public string getName(){
        
        return Name;
    }
     public string setName(String Name){
        
         this.Name = Name;
         return Name;
    }
    
//implement 'call' method with object return type
    public Object call(String action, Map<String, Object> args) {
     //switch-when logic to dynamically call respective action
     switch on action {
			     when 'getName' {
                  return this.getName();
            }
            when 'setName' {
                 return this.setName((String)args.get('Name'));
            }
        }

        return null;
    }
}
