#define N 3
bool print[N]
bool state_active[N]

byte id = 0;

active proctype P1() {
    
    if 
    :: id >= 0 && id <= N-1 ->
        if 
            :: !print[0] && !print[1] && !print[2] ->
                print[id] = true;
                print[id] = false;
        fi
    fi
}

active proctype P2() {
    do 
        :: true -> id = id+1;
        :: true -> id = id-1;
    od
}


never {
    ((print[0] && print[1]) || (print[1] && print[2]) || (print[0] && print[2]));
}
