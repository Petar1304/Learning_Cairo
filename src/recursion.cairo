use debug::PrintTrait;

fn recursive_fn(arr: @Array<u32>, target: u32, pos: u32) {
    if (*arr[pos] == target) {
        'target found'.print();
    } else {
        recursive_fn(arr, target, pos + 1);
    }
}


fn main() {
    let mut arr = ArrayTrait::<u32>::new();
    arr.append(1);
    arr.append(10);
    arr.append(100);
    arr.append(1000);
    arr.append(10000);

    let target = 100_u32;
    let start_pos = 0_u32;

    recursive_fn(@arr, target, start_pos);

}