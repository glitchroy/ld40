instance_create_layer(0, 0, layerTechnical, objDisplayManager);

roomTilemap = -1;
tabooTilemap = -1;

unlocked = [];
money = 0;
wave = 0;
hp = 100;

titleTimer = 0;

stateMachineInit();

stateCreate("Title", stateGameTitle);
stateCreate("Info", stateGameInfo);
stateCreate("Building", stateGameBuilding);
stateCreate("Wave", stateGameWave);
stateCreate("GameOver", stateGameGameOver);
stateInit("Title");
