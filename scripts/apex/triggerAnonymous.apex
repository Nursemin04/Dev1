Opportunity opp = new Opportunity();
opp.Name = 'Trigger opp 2';
opp.StageName = 'Prospecting';
opp.CloseDate = date.today().addDays(60);
insert opp;

opp.Name += ' update';
update opp;

List<Account> accList = new List<Account>();

account acc1 = new Account();
acc1.name = 'Toyota';
accList.add(acc1);


account acc2 = new Account();
acc2.name = 'Volvo';
accList.add(acc2);

insert accList;

