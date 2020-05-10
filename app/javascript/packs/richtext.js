var Trix = require("trix"); require("trix")
require("@rails/actiontext")


/* what the newly created button does */
Trix.config.textAttributes.red = {
    style: { color: "red" },
    parser: function(element) {
        return element.style.color === "red"
    },
    inheritable: true
}

/* insert the button visual in the default toolbar */
addEventListener("trix-initialize", function(event) {
    var buttonHTML = '<button type="button" data-trix-attribute="red">RED</button>'

    event.target.toolbarElement.
    querySelector(".trix-button-group").
    insertAdjacentHTML("beforeend", buttonHTML)
})