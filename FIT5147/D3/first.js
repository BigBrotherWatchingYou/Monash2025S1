window.onload = function (){
    // Using DOM to find the title HTML elemnt
    // More details available at http://developer.mozilla.org/en-US/docs/Web/API/Document
    var titleElement = document.getElementsByTagName("h1")[0];

    // Change the text to FIT5147 when the mouse hovers on the h1 title
    titleElement.onmouseover = function(){
        titleElement.innerHTML = "FIT5147";
    };

    // Change the text back to Mantis Shrimps when the mouse leaves the h1 title
    titleElement.onmouseout = function(){
        titleElement.innerHTML = "Mantis Shrimps";
    };
}