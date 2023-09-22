# Learning Cairo

## TODO:
1. Prvi podprogram treba da ima dva ulaza dve liste ID-jeva, i da funkcija vrati da li postoji presek ta dva niza
2. Drugi tip podpograma bi trebalo da proveri ispunjenost nekog algebarskog uslova (da li je ulaz1 veci za 10% od drugog ulaza)

## Scarb
commands:
- `scarb new hello_world`
- `scarb build`
- `scarb cairo-run`
- `scarb cairo-run --available-gas=10000` (when using loops)

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

### Ownership, References and Snapshots:
- At any given time, a variable can only have one owner.
- You can pass a variable by-value, by-snapshot, or by-reference to a function.
- If you pass-by-value, ownership of the variable is transferred to the function.
- If you want to keep ownership of the variable and know that your function won’t mutate it, you can pass it as a snapshot with `@`.
- If you want to keep ownership of the variable and know that your function will mutate it, you can pass it as a mutable reference with `ref`.

- `#[derive(Copy, Drop)` Drop trait -> value cannot go out of scope unless it has been previously moved.
- `Destruct` trait -> allows values to automatically be `squashed` when they go out of scope (must be used every time dictionary is used inside some struct)




