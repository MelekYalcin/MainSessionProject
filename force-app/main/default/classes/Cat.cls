public class Cat {
    public string name;
    public string color;

    public Cat(string n, string clr){
        name = n;
        color = clr;  
        system.debug(name);
        system.debug(color);   
        sleeping();  
    }

    public void sleeping(){
        system.debug(name+ ' is sleeping');
    }


    public Cat() {
        system.debug('cat constructor called ');
    }
}
