instance_create_layer(0, 0, layerTechnical, objDisplayManager);
instance_create_layer(0, 0, layerTechnical, objUiManager);

roomTilemap = -1;

unlocked = [];
money = 100;
wave = 0;
hp = 100;

stateMachineInit();
stateCreate("Building", stateGameBuilding);
stateCreate("Wave", stateGameWave);
stateCreate("GameOver", stateGameGameOver);
stateInit("Building");
