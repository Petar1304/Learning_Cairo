use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    h: u64,
    w: u64,
}

fn main() {
    let mut rec = Rectangle {h: 3, w: 10};
    let area = calculate_area(@rec);

    area.print();

    flip(ref rec);
    rec.h.print();
    rec.w.print();
}

fn calculate_area(rec: @Rectangle) -> u64 {
    *rec.h * *rec.w
}

fn flip(ref rec: Rectangle) {
    let temp = rec.h;
    rec.h = rec.w;
    rec.w = temp;
}
