**free
// ==========================================================
// Program : HELLO
// Purpose : Hello World caller - Episode 2
//           Calls GetGreeting from HELLOSRV service program
// Compile : CRTRPGMOD MODULE(MYLIB/HELLO)
//                      SRCSTMF('/home/YOURUSER/rpg/HELLO.rpgle')
//                      DBGVIEW(*SOURCE) TGTCCSID(*JOB)
//           CRTPGM    PGM(MYLIB/HELLO)
//                      MODULE(MYLIB/HELLO)
//                      BNDSRVPGM(MYLIB/HELLOSRV)
//                      ACTGRP(*NEW)
// ==========================================================

ctl-opt dftactgrp(*no) actgrp(*new);

// Prototype for GetGreeting from HELLOSRV service program
dcl-pr GetGreeting extproc('GETGREETING');
  name   char(50) const;
  result char(100);
end-pr;

dcl-s greeting  char(100);
dcl-s display52 char(52);

GetGreeting('World' : greeting);
display52 = %subst(greeting : 1 : 52);
dsply display52;

*inlr = *on;
