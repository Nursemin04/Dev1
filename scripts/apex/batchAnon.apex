AccountsBatch ab = new accountsBatch();
database.executeBatch(ab, 50);



//database.executeBatch returns JOB ID.
DepartmentsBatch db =new DepartmentsBatch();
Id JobId = Database.executeBatch(new DepartmentsBatch(), 5);
system.debug('JOB ID is ' + JobId);