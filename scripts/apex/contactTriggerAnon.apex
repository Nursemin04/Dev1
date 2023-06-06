Contact con = new Contact();
con.FirstName = 'Contact';
con.LastName = 'Trigger';
insert con;

con.FirstName = 'Contact Update';
con.LastName = 'Trigger Update';
update con;

delete con;
undelete con;