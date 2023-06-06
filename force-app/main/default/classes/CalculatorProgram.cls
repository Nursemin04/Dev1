public  class CalculatorProgram {
    public void calc() {
        Calculator c = new Calculator();
        System.debug('8,15 add==> ' + c.add(8, 15));

        System.debug('8,15,15 add==> ' + c.add(8, 5,15));
    }
}