use debug::PrintTrait;

fn print_array<T, impl PrintTrait: PrintTrait<T>, impl CopyTrait: Copy<T>, impl DropTrait: Drop<T>>(arr: @Array<T>) {
    let length = arr.len();
    let mut i = 0;
    loop {
        let el = *arr.at(i);
        el.print();

        if (i == length - 1) {
            break;
        }
        i += 1;
    }
}

fn remove_first_value(ref arr: Array<u32>) -> u32 {
    match arr.pop_front() {
            Option::Some(val) => {
                val
            },
            Option::None => {
                'Array is empty'.print();
                0
            }
    }
}


fn main() {
    // let mut b = array![3, 4, 5];
    let mut arr: Array<u32> = ArrayTrait::new();
    arr.append(0);
    arr.append(1);
    arr.append(2);
    // remove_first_value(ref a).print();

    let third = *arr.at(2); // same as *arr[2]
    third.print();

    print_array(@arr);
}
