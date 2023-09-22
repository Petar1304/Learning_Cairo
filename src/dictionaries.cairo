use debug::PrintTrait;

fn main() {

    let mut balances: Felt252Dict<u64> = Default::default();

    balances.insert('Aleksa', 100);
    balances.insert('Marija', 200);

    let balance1: u64 = balances.get('Aleksa');
    let balance2: u64 = balances.get('Marija');

    balance1.print();
    balance2.print();
}

