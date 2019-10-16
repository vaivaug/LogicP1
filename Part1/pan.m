#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - part1.pml:32 - [((((state[0]&&state[1])||(state[1]&&state[2]))||(state[0]&&state[2])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!((((((int)now.state[0])&&((int)now.state[1]))||(((int)now.state[1])&&((int)now.state[2])))||(((int)now.state[0])&&((int)now.state[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - part1.pml:33 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported2 = 0;
			if (verbose && !reported2)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported2 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported2 = 0;
			if (verbose && !reported2)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported2 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P3 */
	case 5: // STATE 1 - part1.pml:24 - [(((((x==3)&&!(state[0]))&&!(state[1]))&&!(state[2])))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(((((now.x==3)&& !(((int)now.state[0])))&& !(((int)now.state[1])))&& !(((int)now.state[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - part1.pml:25 - [x = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = 1;
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - part1.pml:26 - [state[2] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.state[2]);
		now.state[2] = 1;
#ifdef VAR_RANGES
		logval("state[2]", ((int)now.state[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - part1.pml:27 - [state[2] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.state[2]);
		now.state[2] = 0;
#ifdef VAR_RANGES
		logval("state[2]", ((int)now.state[2]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - part1.pml:29 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P2 */
	case 10: // STATE 1 - part1.pml:15 - [(((((x==2)&&!(state[0]))&&!(state[1]))&&!(state[2])))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((((now.x==2)&& !(((int)now.state[0])))&& !(((int)now.state[1])))&& !(((int)now.state[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 2 - part1.pml:16 - [x = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = 3;
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 3 - part1.pml:17 - [state[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.state[1]);
		now.state[1] = 1;
#ifdef VAR_RANGES
		logval("state[1]", ((int)now.state[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 4 - part1.pml:18 - [state[1] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.state[1]);
		now.state[1] = 0;
#ifdef VAR_RANGES
		logval("state[1]", ((int)now.state[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 8 - part1.pml:20 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P1 */
	case 15: // STATE 1 - part1.pml:6 - [(((((x==1)&&!(state[0]))&&!(state[1]))&&!(state[2])))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((now.x==1)&& !(((int)now.state[0])))&& !(((int)now.state[1])))&& !(((int)now.state[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 2 - part1.pml:7 - [x = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.x;
		now.x = 2;
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 3 - part1.pml:8 - [state[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.state[0]);
		now.state[0] = 1;
#ifdef VAR_RANGES
		logval("state[0]", ((int)now.state[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 4 - part1.pml:9 - [state[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.state[0]);
		now.state[0] = 0;
#ifdef VAR_RANGES
		logval("state[0]", ((int)now.state[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - part1.pml:11 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

