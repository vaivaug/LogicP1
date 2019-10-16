#define N 5
bool print[N];
byte turn[N], flag[N];


int total_critical;
bool one_true_found;
int i;
int res;

active [N] proctype P() {
    byte j, k;
    // without never claims, _pid's are: 0 .. N-1 
again:
    k = 0;
    do
    :: k < N-1 -> 
        flag[_pid] = k;
        turn[k] = _pid;
            
        j = 0;
        
        // iterate through all j!=count. Check all are behind you or someone later is in the same position 'count'
        do
        :: j == _pid -> 
            j++;
        :: else ->
            //k is within the range 0 to N-1
            if
            :: j < N ->
                //everyone that is not in _pid (everyone else) have value smaller than the one in _pid 
                (flag[j] < k || turn[k] != _pid);
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
    printf(" %d %d %d %d %d ", print[0],print[1],print[2], print[3], print[4]);
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
        :: atomic {
    		res = 0;
    		i=0;
    		// sum 'print' elements
    		do
    		:: i < N -> 
    		   res = res + print[i];
    		   i++;
    		od;
    		// check the sum is 1 or 0
    		if
    		:: (res == 0 || res == 1) ->
    			skip;
    		:: else -> 
    			break;
            fi
	    }
        od
}
