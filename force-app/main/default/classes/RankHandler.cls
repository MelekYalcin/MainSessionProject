public class RankHandler {
    public string rankPrize(integer rank){
        string prize='';
        if (rank==1) {
            prize='Gold';
        }else if (rank==2) {
            prize='Silver';
        }else if (rank==3) {
            prize='Bronze';
        }else if (rank<10) {
            prize='good job!';
        }else{
            prize='thank you!';
        }
        // last two line i did practice 
        // this is Nested If, so we can also use it
        // is the real work there is not only one way, like this example.
        
        // else{
        //             if (rank<=10) {
        //                 prize='Top 10, good job';
        //             }else {
        //                 prize ='Thank you for paticipating';
        //             }
        //         }
        return prize;
    }

    public string rankPrizeSwitch(integer rank){
        string prize = '';
        switch on rank {
            when 1 {
                prize='Gold';
            }when 2{
                prize ='Silver';
            }when 3{
                prize = 'Bronze';
            }when 4,5,6,7,8,9,10{
                prize ='Top 10 good job!';
            }
            when else {
                prize = 'thank you!';
            }
        }
        return prize;
    }  
}

