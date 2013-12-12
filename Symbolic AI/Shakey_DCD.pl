room(room_1).
room(room_2).
room(room_3).
room(room_4).
room(room_5).
room(room_6).

object(object_1).
object(object_2).

object_in(object_1,room_5).
object_in(object_2,room_5).

object_to(object_1,room_1).
object_to(object_1,room_2).
object_to(object_1,room_4).
object_to(object_1,room_5).
object_to(object_1,room_6).
object_to(object_2,room_1).
object_to(object_2,room_2).
object_to(object_2,room_3).
object_to(object_2,room_4).
object_to(object_2,room_5).
object_to(object_2,room_6).

door(door_1).
door(door_2).
door(door_3).
door(door_4).
door(door_5).
door(door_6).
door(door_7).

shakey_In(room_1).
shakey_In(room_2).
shakey_In(room_3).
shakey_In(room_4).
shakey_In(room_5).
shakey_In(room_6).
shakey_In(room_7).

Shakey.goThru(door_1,room_2).
Shakey.goThru(door_2,room_1).
Shakey.goThru(door_2,room_3).
Shakey.goThru(door_2,room_4).
Shakey.goThru(door_2,room_5).
Shakey.goThru(door_3,room_2).
Shakey.goThru(door_3,room_5).
Shakey.goThru(door_4,room_2).
Shakey.goThru(door_4,room_5).
Shakey.goThru(door_5,room_4).
Shakey.goThru(door_5,room_2).
Shakey.goThru(door_5,room_3).
Shakey.goThru(door_5,room_6).
Shakey.goThru(door_6,room_5).

Shakey.goTo(room_1,room_2).
Shakey.goTo(room_2,room_1).
Shakey.goTo(room_2,room_3).
Shakey.goTo(room_2,room_4).
Shakey.goTo(room_2,room_5).
Shakey.goTo(room_3,room_2).
Shakey.goTo(room_3,room_5).
Shakey.goTo(room_4,room_2).
Shakey.goTo(room_4,room_5).
Shakey.goTo(room_5,room_4).
Shakey.goTo(room_5,room_2).
Shakey.goTo(room_5,room_3).
Shakey.goTo(room_5,room_6).
Shakey.goTo(room_6,room_5).

Shakey.roll(room_1).
Shakey.roll(room_2).
Shakey.roll(room_3).
Shakey.roll(room_4).
Shakey.roll(room_5).
Shakey.roll(room_6).

Shakey.push(O1,R1,R2) <- shakey_In(R1) & object_in(O1,R1) & object_to(O1,R2).
Shakey.goTo(R1, R2) <-Shakey.goTo(R1,R) &  Shakey.goTo(R,R2).
Shakey.Route(R1,D1,R2) <- shakey_In(R1) & Shakey.goTo(R1, R2) & Shakey.goThru(D1,R2) & Shakey.roll(R2) & shakey_In(R2).

Shakey.PushObject(R1,O1,D1,R2) <- shakey_In(R1) & Shakey.push(O1,R1,R2) & Shakey.goTo(R1, R2) & Shakey.goThru(D1,R2) & Shakey.roll(R2) & shakey_In(R2).




