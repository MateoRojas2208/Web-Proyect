let navbar = document.getElementById("barra")
let header = document.getElementById("head")
let header1 = document.getElementById("head1")
let body = document.getElementById("body1")

window.addEventListener("scroll", function () {
    let value = this.scrollY;
    if (value > 0) {
        header.classList.add("active")
    }
    else {
        header.classList.remove("active")
    }
})