

ADD_TRANS_TRIGGER ~51DARGAB~ 2 ~CheckDoorFlags("AR5102_Door1",DOOROPEN)~
ADD_TRANS_TRIGGER ~51DARGAB~ 18 ~CheckDoorFlags("AR5102_Door1",DOOROPEN)~
ADD_TRANS_TRIGGER ~51DARGAB~ 19 ~CheckDoorFlags("AR5102_Door1",DOOROPEN)~
EXTEND_BOTTOM ~51DARGAB~ 2 IF ~!CheckDoorFlags("AR5102_Door1",DOOROPEN)~ THEN REPLY @56000 GOTO 5 END
EXTEND_BOTTOM ~51DARGAB~ 18 IF ~!CheckDoorFlags("AR5102_Door1",DOOROPEN)~ THEN REPLY @56000 GOTO 5 END
EXTEND_BOTTOM ~51DARGAB~ 19 IF ~!CheckDoorFlags("AR5102_Door1",DOOROPEN)~ THEN REPLY @56000 GOTO 5 END

ADD_TRANS_TRIGGER ~64ORRICK~ 70 ~Global("US_Final_Battle_Alternate","GLOBAL",0)~ DO 1
ADD_TRANS_TRIGGER ~64ORRICK~ 71 ~Global("US_Final_Battle_Alternate","GLOBAL",0)~
EXTEND_BOTTOM ~64ORRICK~ 70 IF ~!Global("US_Final_Battle_Alternate","GLOBAL",0)~ THEN REPLY #33931 DO ~AddXPVar("Level_15_Very_Hard",32684)
Unlock("AR6303_Door1")
OpenDoor("AR6303_Door1")
StartCutSceneMode()
StartCutScene("US63CFB6")~ EXIT END
EXTEND_BOTTOM ~64ORRICK~ 71 IF ~!Global("US_Final_Battle_Alternate","GLOBAL",0)~ THEN REPLY #33933 DO ~AddXPVar("Level_15_Very_Hard",32684)
Unlock("AR6303_Door1")
OpenDoor("AR6303_Door1")
StartCutSceneMode()
StartCutScene("US63CFB6")~ EXIT END