#define N 4
bool print[N];
byte move[N], flag[N];

int total_critical;
int i;
int res;

active [N] proctype P() {
    byte j, k;
    // _pid's are: 0 .. N-1 
again:
    k = 0;
    do
    :: k < N-1 -> 
        flag[_pid] = k;
        move[k] = _pid;
            
        j = 0;
        
        do
        :: j == _pid -> 
            j++;
        :: else ->
            //k is within the range 0 to N-1
            if
            :: j < N ->
                //everyone that is not in _pid (everyone else) have value smaller than the one in _pid 
                (flag[j] < k || move[k] != _pid);
                j++;
            :: else ->
                break
            fi
                
        od;
        k++;
    :: else ->
        break
    od;
          
    print[_pid] = true;     
    progress:
    print[_pid] = false;
    //check number of critical states is always 1
    total_critical++;
    assert(total_critical == 1);
    total_critical--;
  
    flag[_pid] = 0;
    goto again;    
                          
}

never {
        do
        :: total_critical > 1 -> 
	    break
	:: else -> 
		skip
        od
}
