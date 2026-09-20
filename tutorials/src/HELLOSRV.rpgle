**free
// ==========================================================
// Module  : HELLOSRV
// Purpose : Hello World service program module
//           Exports GetGreeting - returns a greeting string
// Compile : CRTRPGMOD MODULE(MYLIB/HELLOSRV)
//                      SRCSTMF('/home/YOURUSER/rpg/HELLOSRV.rpgle')
//                      DBGVIEW(*SOURCE) TGTCCSID(*JOB)
// ==========================================================
ctl-opt nomain
        pgminfo(*pcml:*module:*dclcase);

// ---------------------------------------------------------
// GetGreeting
// Returns a personalised greeting message.
// Parameters:
//   name   (input)  - person to greet, char(50)
//   result (output) - greeting string,  char(63)
// Note: PCML does not support varchar return values.
//       Use char output parameter for IWS compatibility.
// ---------------------------------------------------------
dcl-proc GetGreeting export;
  dcl-pi *n;
    name   char(50) const;
    result char(100);
  end-pi;

  result = 'Hello, ' + %trim(name) + '!';

end-proc;
