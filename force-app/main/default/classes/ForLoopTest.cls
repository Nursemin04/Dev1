@istest
public  class ForLoopTest {
    @istest
    private static void sumTest() {
        ForLoop fl = new ForLoop();
        fl.sum(5);
    }
    @istest
    private static void helloTest() {
        ForLoop fl = new ForLoop();
        string msg = fl.hello('ali');
        assert.isNotNull(msg);
        assert.areEqual(' hello 1 hello 2 hello 3', msg);
    }
}