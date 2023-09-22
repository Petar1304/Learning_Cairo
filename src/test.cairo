use debug::PrintTrait;

fn add_two(num: u32) -> u32 {
    num + 2
}

fn main() {
    let num = 5;
    let seven = add_two(5);
    seven.print();
}

#[cfg(test)]
mod tests {

    #[test]
    fn it_works() {
        assert(super::add_two(2) == 4, 'test failed');
    }
}