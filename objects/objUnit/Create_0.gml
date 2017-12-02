placed = false;
placePossible = false;

canEditCone = false;

projectileSprite = -1;
attackSpeed = 1;
attackDamage = 1;
attackAmount = 1;

coneDirection = 0;
coneLength = tileSize*4;
coneWidth = 45;

stateMachineInit();
stateCreate("Edit", stateUnitEdit);
stateCreate("Attack", stateUnitAttack);
stateInit("Edit");