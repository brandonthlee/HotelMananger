insert into RoomType2 values('1 double 1 sofabed', 3);
insert into RoomType2 values('1 queen 1 sofabed', 4);
insert into RoomType2 values('2 double', 4);
insert into RoomType2 values('2 king', 8);
insert into RoomType2 values('2 queen', 6);

insert into RoomType1 values('standard', 110, 0, '1 double 1 sofabed');
insert into RoomType1 values('standard', 110, 1, '1 double 1 sofabed');
insert into RoomType1 values('standard', 120, 1, '2 double');
insert into RoomType1 values('standard', 120, 0, '2 double');
insert into RoomType1 values('deluxe', 140, 0, '1 queen 1 sofabed');
insert into RoomType1 values('deluxe', 140, 1, '1 queen 1 sofabed');
insert into RoomType1 values('deluxe', 150, 1, '2 queen');
insert into RoomType1 values('deluxe', 150, 0, '2 queen');
insert into RoomType1 values('suite', 250, 1, '2 king');
insert into RoomType1 values('suite', 250, 0, '2 king');

insert into Hotel values('9999999991', 'Mandaley Bay', '3950 W 33Ave, Vancouver', 'No.1 Ltd');
insert into Hotel values('9999999981', 'MGM Grand', '3799 S Las Vegas Blvd', 'No.1 Ltd');
insert into Hotel values('9999999081', 'The Venetian', '900 W Georgia St, Vancouver', 'No.2 Ltd');
insert into Hotel values('9999990081', 'Fairmont Hotel', '3800 Garry St, Richmond', 'No.3 Ltd');
insert into Hotel values('9999900081', 'Sheraton Hotel', '1088 Burrard St, Vancouver', 'No.4 Ltd');

insert into RoomHas1 values('100', 1, 'standard', 1, '2 double');
insert into RoomHas1 values('101', 1, 'standard', 1, '2 double');
insert into RoomHas1 values('102', 1, 'standard', 1, '2 double');
insert into RoomHas1 values('103', 1, 'standard', 1, '1 double 1 sofabed');
insert into RoomHas1 values('104', 1, 'deluxe', 1, '1 queen 1 sofabed');
insert into RoomHas1 values('105', 1, 'deluxe', 1, '2 queen');
insert into RoomHas1 values('200', 2, 'standard', 1, '2 double');
insert into RoomHas1 values('201', 2, 'standard', 1, '2 double');
insert into RoomHas1 values('202', 2, 'standard', 1, '2 double');
insert into RoomHas1 values('203', 2, 'standard', 1, '2 double');
insert into RoomHas1 values('204', 2, 'deluxe', 1, '2 queen');
insert into RoomHas1 values('205', 2, 'suite', 0, '2 king');
insert into RoomHas1 values('300', 3, 'deluxe', 0, '1 queen 1 sofabed');
insert into RoomHas1 values('301', 3, 'deluxe', 0, '2 queen');
insert into RoomHas1 values('302', 3, 'deluxe', 0, '2 queen');
insert into RoomHas1 values('303', 3, 'deluxe', 0, '2 queen');
insert into RoomHas1 values('304', 3, 'suite', 0, '2 king');
insert into RoomHas1 values('305', 3, 'suite', 0, '2 king');



insert into RoomHas2 values('100', 1, '9999999991', 1);
insert into RoomHas2 values('101', 1, '9999999981', 1);
insert into RoomHas2 values('102', 1, '9999999081', 1);
insert into RoomHas2 values('103', 1, '9999999081', 0);
insert into RoomHas2 values('104', 1, '9999999081', 1);
insert into RoomHas2 values('105', 1, '9999999081', 1);
insert into RoomHas2 values('200', 2, '9999999081', 0);
insert into RoomHas2 values('201', 2, '9999999081', 0);
insert into RoomHas2 values('202', 2, '9999990081', 0);
insert into RoomHas2 values('203', 2, '9999990081', 0);
insert into RoomHas2 values('204', 2, '9999900081', 0);
insert into RoomHas2 values('205', 2, '9999900081', 0);
insert into RoomHas2 values('300', 3, '9999900081', 0);
insert into RoomHas2 values('301', 3, '9999900081', 0);
insert into RoomHas2 values('302', 3, '9999999991', 0);
insert into RoomHas2 values('303', 3, '9999999991', 0);
insert into RoomHas2 values('304', 3, '9999999991', 0);
insert into RoomHas2 values('305', 3, '9999999991', 0);

insert into Guest 
values('G000000019', 'Christina Barton', '8824-2357', '3723 Garry St. Burnaby, BC, V3H1G7', '7788838967');

insert into Guest 
values('G000000025', 'Steven Shi', '9928-1123', '4598 Graville Avenue. Vancouver, BC, V6M2V1', '7786538865');

insert into Guest 
values('G000000032', 'Amy Yang', '1098-8362', '3884 Harry St. Vancouver, BC, V5H 3Z7', '7789347813');

insert into Guest 
values('G000000038', 'Coco Lee', '9372-4625', '10783 Thunder St., Calgary, TY11K7', '6048834567');

insert into Guest 
values('G000000042', 'Kuoso Saiki', '4765-5867', '3723 Nendo St., Toronto, M4C5K7', '7789807654');

insert into Guest 
values('G000000113', 'Silas Krouse', '8824-1235', '1005 Garry St', '7788835074');

insert into Guest 
values('G000002412', 'Ebonie Repka', '8824-1236', '1006 Granville Avenue', '7788835075');

insert into Guest 
values('G000056272', 'Colin Perrotta', '8824-1237', '1007 Harry St', '7788835076');

insert into Guest 
values('G003423438', 'Valarie Folks', '8824-1238', '1008 Thunder St', '7788835077');

insert into Guest 
values('G012323342', 'Candis Krauth', '8824-1239', '1009 Nendo St', '7788835078');


insert into Reservation
Values ('R00000000', '01-JAN-2019', '03-JAN-2019', 0, 'G000000019', '9999999991', '1234567890345612', 5,'100');
insert into Reservation
Values ('R00000001', '04-JAN-2019', '07-JAN-2019', 0, 'G000000025', '9999999981', '4450783423451990', 4,'101');
insert into Reservation
Values ('R00000002', '03-FEB-2019','09-FEB-2019', 0, 'G000000032', '9999999981', '3847233345456789', 2,'102');

insert into Reservation
Values ('R00000003', '14-MAY-2019', '22-MAY-2019', 1, 'G000000038', '9999999981', '2999333454567890', 5,'103');

insert into Reservation
Values ('R00000005', '04-JUN-2019', '07-JUN-2019', 0, 'G000000113', '9999990081', '8792333454567890', 3,'105');

insert into Reservation
Values ('R00000004', '01-APR-2019', '07-APR-2019', 1, 'G000000042', '9999999081', '6893333454567890', 2,'200');


insert into Reservation
Values ('R00000006', '06-JUN-2019', '07-JUN-2019', 0, 'G000002412', '9999900081', '1234567890123454', 4,'201');

insert into Reservation
Values ('R00000007', '02-AUG-2019', '07-AUG-2019', 1, 'G000000025', '9999900081', '1234567890123453', 1,'202');

insert into Reservation
Values ('R00000008', '04-AUG-2019', '10-AUG-2019', 0, 'G000000025', '9999900081', '1234567890123452', 5,'203');

insert into Reservation
Values ('R00000009', '05-AUG-2019', '07-AUG-2019', 0, 'G000000025', '9999900081', '1234567890123451', 3,'204');

insert into Service values('Breakfast', 15);
insert into Service values('Lunch', 20);
insert into Service values('Laundry', 2);
insert into Service values('Shuttle', 25);
insert into Service values('Housekeeping', 5);

insert into Payment
values ('B123848711', '01-JAN-2020', '1234567890345612', 'Christina Barton', 'R00000000', 500)
insert into Payment
values ('B348712398', '04-JAN-2020', '4450783423451990', 'Steven Shi', 'R00000001', 1002)
insert into Payment
values ('B234874821', '03-FEB-2020', '3847233345456789', 'Amy Yang', 'R00000002', 550)
insert into Payment
values ('B304395809', '14-MAY-2020', '2999333454567890', 'Coco Lee', 'R00000003', 850)
insert into Payment
values ('B234878488', '04-JUN-2020', '6893333454567890', 'Kuoso Saiki', 'R00000004', 700)
insert into Payment
values ('B209856784', '01-APR-2020', '8792333454567890', 'Silas Krouse','R00000005', 400)
insert into Payment
values ('B001847737', '06-JUN-2020', '1234567890123454', 'Ebonie Repka', 'R00000006', 200)
insert into Payment
values ('B579834588', '02-AUG-2020', '1234567890123453', 'Colin Perrotta','R00000007', 1000)
insert into Payment
values ('B345875348', '04-AUG-2020', '1234567890123452', 'Valarie Folks', 'R00000008', 3200)
insert into Payment
values ('B398273487', '05-AUG-2020', '1234567890123451', 'Candis Krauth','R00000009', 220)

insert into Employee
values ('E000000001','0000000000')



commit;