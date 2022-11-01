Candidates.companyName = 'SoftInnovas';
system.debug('Start candidate count= '+Candidates.candidateCount);

Candidates c1 =new Candidates();
c1.Name='Jery';
c1.gender='Male';
c1.printCandidate();

Candidates c2 =new Candidates();
c2.Name='Elania';
c2.gender='female';
c2.printCandidate();

Candidates c3 =new Candidates();
c3.Name='Georgia';
c3.gender='Male';
c3.printCandidate();



Candidates.companyName = 'Walmart';

Candidates c4 = new Candidates();
c4.Name='Maria';
c4.gender='Female';
c4.printCandidate();

Candidates c5 = new Candidates();
c5.Name='Joshua';
c5.gender='Male';
c5.printCandidate();

c1.printCandidate();
c2.printCandidate();
c3.printCandidate();

system.debug('End candidate count= '+Candidates.candidateCount);


