# `SMJobBless` +  NSXPC #

`SMJobBlessNSXPC` is based off Nathan de Vries' `SMJobBlessXPC` project, itself based on Apple's `SMJobBless` sample code. It uses the Cocoa classes for XPC, an interprocess communication mechanism, rather than the original C API for XPC. The communication is made between the app and privileged helper tool over Mach Ports.

See the session 241 in the [WWDC 2012 videos](https://developer.apple.com/videos/wwdc/2012/) for more information about using XPC with Cocoa. 

## Original README ##

For the original `README` that ships with Nathan de Vrie's' `SMJobBlessXPC` project, see `ReadMe-SMJobBlessXPC.md`.

## Outline of changes to the original sample code ##

The following changes have been made to Nathan de Vries's sample code:

 * All the C code to create the service and the connection in the client have been replaced with their Cocoa counterpart.
 * A protocol has been added, `Actions`, to specify the actions that can be performed on the remote object.
 * A class implementing the protocol has been added to the helper tool, `PrivilegedAgent`
 * The errors are handled using blocks.

