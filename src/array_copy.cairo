use debug::PrintTrait;

fn main() {

    let op: felt252 = '<';
    op.print();

    if (op == '>') {
        'greater then'.print();
    } else if (op == '<') {
        'less then'.print();
    }
    // let arr1 = ArrayTrait::<u128>::new();
    // let arr2 = arr1.clone();
}