let navbar = document.getElementById("barra")
let header = document.getElementById("head")
let body = document.getElementById("body1")

window.addEventListener("scroll", function () {
    let value = this.scrollY;
    if (value > 0) {
        header.classList.add("active")
    }
    else {
        header.classList.remove("active")
    }
    console.log(value)

    body.style.background = `radial-gradient(ellipse at bottom, rgb(0, 0, 0) 0%, rgb(12, 41, 65) ${80 + 10 * (value * 0.03)}%)`
})