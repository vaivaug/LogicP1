	bool state1, state2, state3;
	int x = 1;
	
	active proctype P1() {
	    do 
	        :: x == 1 && !state1 && !state2 && !state3 ->
                    x = 2;
	            state1 = true;
	            state1 = false;
	    od
	}
	
	active proctype P2() {
	    do 
	        :: x == 2 && !state1 && !state2 && !state3->
                    x = 3;	            
                    state2 = true;
	            state2 = false;
	    od
	}
	
	active proctype P3() {
	    do 
	        :: x == 3 && !state1 && !state2 && !state3->
	            x = 1;
                    state3 = true;
	            state3 = false;
	    od
	}
	
	never {
	    do
	    :: ((state1 && state2) || (state2 && state3) || (state1 && state3)) -> break;
                    :: else -> skip;
	    od;

	}


