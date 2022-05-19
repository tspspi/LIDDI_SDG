# Matlab command routines for SDG1032X

These are just some basic commands that allow manipulation of some
basic settings of the SDG1032X function generator (note that this repository
is in no way associated with Siglent, there is no guarantee those functions
work as expected, there is no error handling and connection handling is
rather crude since connections are opened and closed on each command
so they're not suited for really tight loops).

Those commands have been implemented for a specific particular purpose - this
is not an implementation I'd choose for a generic control library such
as the one I've implemented [for Python](https://github.com/tspspi/pysdg1032x)
