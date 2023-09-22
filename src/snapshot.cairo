use debug::PrintTrait;

fn arr_len(arr: @Array<u128>) -> usize {
    arr.len()
}

fn main() {
    let mut arr1 = ArrayTrait::<u128>::new();
    arr1.append(1);
    arr1.append(2);
    let arr_snapshot = @arr1;
    arr1.append(3);
    let len1 = arr_len(arr_snapshot);
    let len2 = arr_len(@arr1);
    len1.print();
    len2.print();
}