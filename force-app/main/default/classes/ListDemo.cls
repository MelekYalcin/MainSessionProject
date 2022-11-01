public class ListDemo {
    public static string candidateList(integer i) {
        List<String> listcandidate = new List<String>();
        listcandidate.add('Marc');
        listcandidate.add('Daniela');
        listcandidate.add('Jamie');
        listcandidate.add('Marc');
        system.debug('listCandidates => '+listcandidate);

        string returnStr = '';
        if(i>=0 && i< listcandidate.size()){
            returnStr = listcandidate[i];
        }else{
            returnStr = 'No Value FOUND.';
        }

        return returnStr;
    }

    public static void randomIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);
        
        system.debug('list integer => '+listInteger);

        integer idx3Value = listInteger.get(3);
        system.debug(idx3Value);

        integer idx2Value = listInteger[2];
        system.debug(idx2Value);
    }
    public static void allCats(){
        cat siCat = new cat('fluffykins','white');
        cat dsh = new cat('domestic short hair','white-black');
        cat vk = new cat('van kedisi','black');

        list<Cat> cats = new list<cat>();
        cats.add(siCat);
        cats.add(dsh);
        cats.add(vk);
        cats.add(siCat);
        cats.add(dsh);
        system.debug(cats);

        if(!cats.isEmpty()){
            cat catAt3 = cats[3]; 
            system.debug('cat at 3 is '+catAt3);
        }
        
    }
}
