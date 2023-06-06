list<contact> l = new list<contact>();

Contact c = new contact();
c.LastName  = 'cnt trigger 3';
l.add(c);

system.debug('----');

Contact c1 = new contact();
c1.LastName  = 'cnt trigger 4';
l.add(c1);

insert l; //each DML fires trigger one time




List<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'test acc trigger ' + i;
    //add account to list
    listAcc.add(ac);
}
insert listAcc;