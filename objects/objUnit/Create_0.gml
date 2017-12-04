placed = false;
placePossible = false;

stats = undefined;

canEditCone = false;
aimAuto = false; //if true, automatically targets enemies in radius
aimAutoActivate = false; //if true, only activates if enemies are nearby
aimRandomly = true;

projectileSprite = -1;
attackSpeed = [1, 1]; //Speed of single projectile
attackDamage = [1, 1]; //Damage per attack
attackAmount = [1, 1]; //Variance in Attacks
attackInterval = [1, 1]; //Pause between attacks

hasFreezeEffect = false;
hasPiercingEffect = false;

activationRadiusScale = 1.2;

coneLength = tileSize*4;
coneWidth = 45;

coneDirection = 0;

stateMachineInit();
stateCreate("Edit", stateUnitEdit);
stateCreate("Attack", stateUnitAttack);
stateInit("Edit");