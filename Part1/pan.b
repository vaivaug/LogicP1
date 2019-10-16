	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		;
		
	case 4: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P3 */
;
		;
		
	case 6: // STATE 2
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 3
		;
		now.state[2] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
		now.state[2] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P2 */
;
		;
		
	case 11: // STATE 2
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 3
		;
		now.state[1] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 4
		;
		now.state[1] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P1 */
;
		;
		
	case 16: // STATE 2
		;
		now.x = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 3
		;
		now.state[0] = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 4
		;
		now.state[0] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;
	}

