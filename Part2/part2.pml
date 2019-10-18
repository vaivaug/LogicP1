#define N 4  // N > 2
bool print[N];
int move[N], critical[N];

int total_critical;
int i;

active [N] proctype P() {
    int j, k;
    // _pid's are process number from 0 to N-1
again:
    k = 0;
    do
    // critical[i] stores the position in the queue which shows the order of processes to be executed
    :: k < N-1 ->
        critical[_pid] = k;
        move[k] = _pid;

        j = 0;
        // iterate through all elements not in _pid
        do
        :: j == _pid ->
            j++;
        :: else ->
            //k is within the range 0 to N-1
            if
            :: j < N ->
                //everyone that is not in _pid (everyone else) have value smaller than the one in _pid
                (critical[j] < k || move[k] != _pid);
                j++;
            :: else ->
                break
            fi

        od;
        k++;
    :: else ->
        break
    od;

    // critical section
    print[_pid] = true;

    //check number of critical states is always 1 at this stage
    total_critical++;
    assert(total_critical == 1);

    progress:
    print[_pid] = false;
    total_critical--;

    critical[_pid] = 0;
    goto again;

}

// check that maximum one 0 <= i < N gives print[i] = true
// therefore never more than one i gives print[i] = true
never {
  do
  :: total_critical > 1 ->
	    break
	:: else ->
		skip
  od
}
