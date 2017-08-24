# EXAMPLE INSERTS OF GARAGE DATABASE

USE beca_java;

# TABLE CLIENT

INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (2,"45878956L","Adrián","Sánchez","668523651");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (3,"23587456J","Antonio","López","600142536");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (4,"87526341M","María","González","968523012");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (5,"69213333P","Lucía","Cortijo","687080502");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (6,"49245170P","Miguel","Periago","724233570");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (7,"99693601D","Lydia","Oliver","753176550");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (8,"61082750V","Ginés","Jiménez","736092266");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (9,"11000732Q","José","Martínez","713253206");
INSERT INTO `client`(`idClient`, `nif`, `name`, `surname`, `telephone`) VALUES (10,"33986292C","Laura","Abril","638072353");

# TABLE VEHICLE

INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (2,"0123AAB","MERCEDES",2);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (3,"4567CCB","OPEL",2);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (4,"7856BNH","FIAT",3);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (5,"6542JHG","TOYOTA",4);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (6,"6321CVD","SEAT",1);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (7,"3547CAX","MERCEDES",7);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (8,"9823AXD","HONDA",10);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (9,"4238LKJ","CITRÖEN",5);
INSERT INTO `vehicle`(`idVehicle`, `vehiclePlate`, `vehicleModel`, `idClient`) VALUES (10,"8456AXC","OPEL",4);

# TABLE PARKINGPLACE

INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (2,2,50,20,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (3,3,50,20,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (4,4,50,20,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (5,5,50,20,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (6,6,50,20,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (7,7,50,20,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (8,8,50,20,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (9,9,50,20,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (10,10,50,20,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (11,11,30,10,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (12,12,30,10,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (13,13,30,10,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (14,14,30,10,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (15,15,30,10,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (16,16,30,10,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (17,17,30,10,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (18,18,30,10,0);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (19,19,30,10,1);
INSERT INTO `parkingplace`(`idParkingPlace`, `parkingNumber`, `parkingPrize`, `parkingSize`, `parkingState`) VALUES (20,20,10,10,0);

# TABLE BOOKING

INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (2,"2017-07-13 14:00:00",2,2,2);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (3,"2017-08-10 19:32:00",3,2,3);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (4,"2017-06-04 13:58:00",4,3,4);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (5,"2017-07-05 10:18:00",5,4,5);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (6,"2016-11-28 09:24:00",6,1,6);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (7,"2016-12-11 08:37:00",7,7,7);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (8,"2015-03-01 17:45:00",8,5,9);
INSERT INTO `booking`(`idBooking`, `bookingDate`, `idParkingPlace`, `idClient`, `idVehicle`) VALUES (9,"2016-02-09 11:11:00",9,10,8);
