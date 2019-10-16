#define N 4

bool print[N]
int current_id


byte turn[N], flag[N];
byte ncrit;	/* auxiliary variable to check mutex */

active [N] proctype user() {	
    
    byte j, k;
	/* without never claims, _pid's are: 0 .. N-1 */
    again:
	    k = 0;	/* count max N-1 rounds of competition */
	    do
	        :: k < N-1 ->
		        flag[_pid] = k;
		        turn[k] = _pid;
                j = 0;		/* for all j != _pid */
		        do
		        :: j == _pid ->
			        j++
		        :: else ->
			            if
			            :: j < N ->
			            	(flag[j] < k || turn[k] != _pid);

				            do
				            :: flag[j] < k -> break
				            :: else ->
					                if
					                :: turn[k] != _pid -> break
					                :: else
					                fi
				            od;

				            j++
			           :: else  ->
				                break
			           fi
		        od;
		        k++
	        :: else ->	/* survived all n-1 rounds */
		            break
	        od;

	    ncrit++;
	    ncrit--;

	    flag[_pid] = 0;
	    goto again
}


