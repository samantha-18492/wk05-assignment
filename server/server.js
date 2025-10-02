import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import pg from "pg";

const app = express();

app.use(cors());

app.use(express.json());

dotenv.config();

const db = new pg.Pool({
  connectionString: process.env.DB_CONN,
});

app.get("/", (req, res) => {
  res.status(200).json(`You're looking at my root route!`);
});

//create a new get route for the homepage
app.get("/book-details", async (req, res) => {
  const result = await db.query("SELECT * FROM book_details ORDER BY title");

  res.json(result.rows);
});

// Midnight Library
app.get("/book-reviews/the-midnight-library", async (req, res) => {
  const result = await db.query(
    "SELECT * FROM book_reviews WHERE book_title = 'The Midnight Library' ORDER BY id DESC"
  );

  res.json(result.rows);
});

//Doctor Sleep
app.get("/book-reviews/doctor-sleep", async (req, res) => {
  const result = await db.query(
    "SELECT * FROM book_reviews WHERE book_title = 'Doctor Sleep' ORDER BY id DESC"
  );
  res.json(result.rows);
});

//Yes Please
app.get("/book-reviews/Yes Please", async (req, res) => {
  const result = await db.query(
    "SELECT * FROM book_reviews WHERE book_title = 'Yes Please' ORDER BY id DESC"
  );
  res.json(result.rows);
});

//Post for ALL books
app.post("/book-reviews", async (req, res) => {
  const body = req.body;
  const usernameFromClient = req.body.username;
  const commentFromClient = req.body.comment;
  const ratingFromClient = req.body.rating;
  const bookTitle = req.body.book_title;

  const data = await db.query(
    `INSERT INTO book_reviews (username, comment, rating, book_title) VALUES ($1, $2, $3, $4)`,
    [usernameFromClient, commentFromClient, ratingFromClient, bookTitle]
  );

  res.json({ status: `Review inserted into database` });
});

app.listen(8080, () => {
  console.log("Server started on http://localhost:8080");
});
