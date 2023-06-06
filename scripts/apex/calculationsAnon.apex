NewCar nc = new NewCar();
nc.startCar('Nissan', 'Rogue');

nc.accelerate(80);
nc.checkSpeed();

nc.brake(55);
nc.checkSpeed();

nc.accelerate(10);
nc.checkSpeed();

nc.brake(40);
nc.checkSpeed();

nc.stopCar();