const availableBooks = document.getElementById("available-books");

//get details from database using async fetchBooks() with book-details and calls below function
async function fetchBooks() {
  const response = await fetch("http://localhost:8080/book-details");
  const books = await response.json();
  createBooks(books);
}

function createBooks(booksArray) {
  booksArray.forEach((book) => {
    const div = document.createElement("div");

    const titleElement = document.createElement("p");
    const authorElement = document.createElement("p");
    const imgElement = document.createElement("img");

    titleElement.innerText = book.title;
    authorElement.innerText = book.author;
    imgElement.src = book.cover_url;

    div.setAttribute("class", "listOfBooks");

    div.append(titleElement, authorElement, imgElement);

    availableBooks.append(div);
  });
}

fetchBooks();

//do you use a click event to navigate to a new webpage?
