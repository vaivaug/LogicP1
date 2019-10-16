bool state[3]
int x = 1;

active proctype P1() {
    do 
        :: x == 1 && !state[0] && !state[1] && !state[2] ->
            x = 2;
            state[0] = true;
            state[0] = false;
    od
}

active proctype P2() {
    do 
        :: x == 2 && !state[0] && !state[1] && !state[2] ->
            x = 3;
            state[1] = true;
            state[1] = false;
    od
}

active proctype P3() {
    do 
        :: x == 3 && !state[0] && !state[1] && !state[2] ->
            x = 1;
            state[2] = true;
            state[2] = false;
    od
}

never {
    ((state[0] && state[1]) || (state[1] && state[2]) || (state[0] && state[2]));
}
