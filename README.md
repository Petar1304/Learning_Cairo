# Learning Cairo

## TODO:
1. Prvi podprogram treba da ima dva ulaza dve liste ID-jeva, i da funkcija vrati da li postoji presek ta dva niza
2. Drugi tip podpograma bi trebalo da proveri ispunjenost nekog algebarskog uslova (da li je ulaz1 veci za 10% od drugog ulaza)

## Scarb
commands:
- `scarb new hello_world`
- `scarb build`
- `scarb cairo-run`

## Cairo

### Data Types:
- Boolean(bool)
- Never type: a type of an expression that should not be evaluated in the encapsulating block, but should cause a flow control change
- Unit type: () a type that has only one value
- Numeric types: felt252 (used to represent a field element) and integers
- Short String: max length of 31 chars stored in felt252

### Type Casting:
- `.try_into()` safe type casting, returns Option<T>, which needs to be unwraped
- `.into()` 

### Modules and Creates:
- A module is a named container for items such as structs, enums, functions, constants, and traits.
- A crate is a single compilation unit. It has a root directory, and a root module defined at the file lib.cairo under this directory.




