public class NewCar {
        public Integer currentSpeed = 0;
        public string carType = '';
        public string carName = '';
            
        public void startCar(string type, string name){
            carType = type;
            System.debug(carType);
            carName = name; 
            System.debug(carName); 
        }
         
        public void accelerate(integer x){
            currentSpeed +=x;
            System.debug(currentSpeed);
        }
        public void brake(integer y){
            currentSpeed -= y;
            System.debug(currentSpeed);
        }
        public void stopCar(){
            currentSpeed = 0;
            System.debug(currentSpeed);
        }
        public void checkSpeed(){
            
            if (currentSpeed >0 && currentSpeed<= 30) {
                System.debug('City Mode');
                
            }else if (currentSpeed>30 && currentSpeed<= 60) {
                System.debug('Economy Mode');
                
            } else if (currentSpeed> 60){
                System.debug('Sports Mode');
            }
                
        }
    }

    
