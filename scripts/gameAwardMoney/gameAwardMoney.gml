switch (argument0) {
	case 0: gameAddMoney(85, false); break;//inital money
	case 1: gameAddMoney(30); break;
	case 2: gameAddMoney(30); break;
	case 3: gameAddMoney(30); break;
	case 4: gameAddMoney(30); break;
	case 5: gameAddMoney(40); break;
	case 6: gameAddMoney(40); break;
	case 7: gameAddMoney(40); break;
	default: gameAddMoney(irandom_range(10+wave, 30+wave)); break;
}