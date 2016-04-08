// ----------------------------------------------------------------------------

// This module contains the startup code for a portable embedded
// C/C++ application, built with newlib.
//
// Control reaches here from the reset handler via jump or call.
//
// The actual steps performed by _start are:
// - copy the initialised data region(s)
// - clear the BSS region(s)
// - initialise the system
// - run the preinit/init array (for the C++ static constructors)
// - initialize the arc/argv
// - branch to main()
// - run the fini array (for the C++ static destructors)
// - call _exit(), directly or via exit()
//
// The normal configuration is standalone, with all support
// functions implemented locally.
//
// For this to be called, the project linker must be configured without
// the startup sequence (-nostartfiles).

// ----------------------------------------------------------------------------

//#include <stdint.h>
//#include <sys/types.h>

// ----------------------------------------------------------------------------

// Begin address for the initialisation values of the .data section.
// defined in linker script
extern unsigned int _sidata;
// Begin address for the .data section; defined in linker script
extern unsigned int _sdata;
// End address for the .data section; defined in linker script
extern unsigned int _edata;

// Begin address for the .bss section; defined in linker script
extern unsigned int __bss_start__;
// End address for the .bss section; defined in linker script
extern unsigned int __bss_end__;


extern void __initialize_args (int*, char***);

// main() is the entry point for newlib based applications.
// By default, there are no arguments, but this can be customised
// by redefining __initialize_args(), which is done when the
// semihosting configurations are used.
extern int main (int argc, char* argv[]);

// The implementation for the exit routine; for embedded
// applications, a system reset will be performed.
extern void __attribute__((noreturn)) _exit (int);

// ----------------------------------------------------------------------------

// Forward declarations

void _start (void);
void __initialize_data (unsigned int* from, unsigned int* region_begin,
			unsigned int* region_end);
void __initialize_bss (unsigned int* region_begin, unsigned int* region_end);
void __initialize_hardware_early (void);
void __initialize_hardware (void);

// ----------------------------------------------------------------------------

inline void
__attribute__((always_inline))
__initialize_data (unsigned int* from, unsigned int* region_begin,
		   unsigned int* region_end)
{
  // Iterate and copy word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
  while (p < region_end)
    *p++ = *from++;
}

inline void
__attribute__((always_inline))
__initialize_bss (unsigned int* region_begin, unsigned int* region_end)
{
  // Iterate and clear word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
  while (p < region_end)
    *p++ = 0;
}

// These magic symbols are provided by the linker.
extern void
(*__preinit_array_start[]) (void) __attribute__((weak));
extern void
(*__preinit_array_end[]) (void) __attribute__((weak));
extern void
(*__init_array_start[]) (void) __attribute__((weak));
extern void
(*__init_array_end[]) (void) __attribute__((weak));
extern void
(*__fini_array_start[]) (void) __attribute__((weak));
extern void
(*__fini_array_end[]) (void) __attribute__((weak));

void 
__attribute__ ((section(".after_vectors"), noreturn, weak)) 
_start (void)
{

  // Initialise hardware right after reset, to switch clock to higher
  // frequency and have the rest of the initialisations run faster.
  //
  // Mandatory on platforms like Kinetis, which start with the watch dog
  // enabled and require an early sequence to disable it.
  //
  // Also useful on platform with external RAM, that need to be
  // initialised before filling the BSS section.

  __initialize_hardware_early ();

  // Use Old Style DATA and BSS section initialisation,
  // that will manage a single BSS sections.

  // Copy the DATA segment from Flash to RAM (inlined).
  __initialize_data (&_sidata, &_sdata, &_edata);

  // Zero fill the BSS section (inlined).
  __initialize_bss (&__bss_start__, &__bss_end__);

  // Hook to continue the initialisations. Usually compute and store the
  // clock frequency in the global CMSIS variable, cleared above.
  __initialize_hardware ();

  // Get the argc/argv (useful in semihosting configurations).
  int argc;
  char** argv;
  __initialize_args (&argc, &argv);

  // Call the main entry point, and save the exit code.
  int code = main (argc, argv);

  _exit (code);

  // Should never reach this, _exit() should have already
  // performed a reset.
  for (;;)
    ;
}

// ----------------------------------------------------------------------------
