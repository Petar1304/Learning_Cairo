use debug::PrintTrait;

fn main() {
    let mut i: usize = 0;

    let result = loop {
        if (i == 7) {
            break i;
        }
        i.print();
        i += 1;
    };
    'Result'.print();
    result.print();
}