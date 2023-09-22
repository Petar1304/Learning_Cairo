use debug::PrintTrait;

fn is_10_percent_greater(a: u64, b: u64) -> bool {
    let ten_percent_of_b = 10 * b / 100;

    ten_percent_of_b.print();

    a > (b + ten_percent_of_b)
}

fn compare(input_1: felt252, input_2: felt252, op: felt252) {

}

fn main() {
    let num1 = 100;
    let num2 = 200;

    let res = is_10_percent_greater(num1, num2);
    res.print();
}
