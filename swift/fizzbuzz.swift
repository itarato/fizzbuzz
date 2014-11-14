(1...101).map {
    (n:Int) -> String in
    var out:String = ""
    if n % 3 == 0 {
        out += "fizz"
    }
    if n % 5 == 0 {
        out += "buzz"
    }
    if out == "" {
        out = String(n)
    }
    return out
}