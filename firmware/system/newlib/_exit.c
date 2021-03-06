// ----------------------------------------------------------------------------

extern void __attribute__ ((noreturn)) __reset_hardware (void);

// ----------------------------------------------------------------------------

// Forward declaration
void _exit (int code);

// ----------------------------------------------------------------------------
// On Release, call the hardware reset procedure.
// On Debug we just enter an infinite loop, to be used as landmark when halting
// the debugger.
//
// It can be redefined in the application, if more functionality
// is required.
void __attribute__((weak)) _exit (int code __attribute__((unused)))
{
  __reset_hardware ();
  
  while (1)
    ;
}

// ----------------------------------------------------------------------------

void __attribute__ ((weak, noreturn)) abort (void)
{
  _exit (1);
  
  while (1)
    ;
}

// ----------------------------------------------------------------------------
