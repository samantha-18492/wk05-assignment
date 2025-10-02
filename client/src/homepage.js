const availableBooks = document.getElementById("available-books");

//get details from database using async fetchBooks() with book-details and calls below function
async function fetchBooks() {
  const response = await fetch(
    "https://wk05-assignment-server.onrender.com/book-details"
  );
  const books = await response.json();
  createBooks(books);
}

function createBooks(booksArray) {
  booksArray.forEach((book) => {
    const div = document.createElement("a");
    div.href = `/${book.title}/`;

    const titleElement = document.createElement("h2");
    const authorElement = document.createElement("h3");
    const imgElement = document.createElement("img");

    titleElement.innerText = book.title;
    authorElement.innerText = book.author;
    imgElement.setAttribute(
      "alt",
      `Front cover of the book titled ${book.title}`
    );
    imgElement.src = book.cover_url;

    div.setAttribute("class", "book");

    div.append(titleElement, authorElement, imgElement);

    availableBooks.append(div);
  });
}

fetchBooks();

//create a click event for each div.book
