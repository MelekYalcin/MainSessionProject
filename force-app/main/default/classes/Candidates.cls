public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer candidateCount = 0;
    public Candidates(){
        system.debug('constructer called');
        candidateCount++;
    }

    public void printCandidate(){
        system.debug('candidate name is '+ name);
        system.debug('candidate gender is '+ gender);
        system.debug('Company name is '+ companyName);
        system.debug('=====End======');
    }
}
