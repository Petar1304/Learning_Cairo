use debug::PrintTrait;

// #[derive(Copy, Drop)]
struct Point {
    x: u32,
    y: u32
}

fn distance(x1: Point, x2: Point) -> u32 {
    (x1.x - x2.x) * (x1.x - x2.x) + (x1.y - x2.y) * (x1.y - x2.y)
}

fn main() {

    let x1: Point = Point{x: 5, y: 7};
    let x2: Point = Point{x: 2, y: 3};

    let dst = distance(x1, x2);
    dst.print();
    ()
}