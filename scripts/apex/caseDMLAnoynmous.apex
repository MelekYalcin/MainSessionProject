List<Case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;

List<case> listCase2 = [select id, status from case where status='New'];
for(case c: listCase2){
    c.Status = 'Working';
}
update listCase2;

