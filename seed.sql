CREATE TABLE book_reviews (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username TEXT,
  review TEXT,
  rating INT,
  CHECK (rating BETWEEN 1 AND 5)
)

INSERT INTO book_reviews (username, comment, rating) VALUES ('Mia', 'Loved this book, it really made me think about my own choices.', 5),
('Oliver', 'Such a cozy read, I didn’t want to put it down.', 4),
('Sophie', 'Kinda sad at first but it ends on such a hopeful note.', 5),
('Ethan', 'Cool idea with all the different lives, really enjoyed it.', 4),
('Lily', 'It dragged a bit in places but I liked the message.', 3),
('Jacob', 'One of those books that stays with you after you finish.', 5),
('Amelia', 'Made me cry but in a good way!', 5),
('Noah', 'Honestly, I couldn’t get into it at all.', 1),
('Isabella', 'Felt like a warm hug in book form.', 5),
('Lucas', 'Interesting idea but kind of slow for me.', 2)

-- change table to facilitate more than one book title

ALTER TABLE book_reviews ADD book_title TEXT;

UPDATE book_reviews SET book_title = 'The Midnight Library';

INSERT INTO book_reviews (username, comment, rating, book_title) VALUES ('Marcus', 'Creepy, tense, and surprisingly moving. King balances horror with real human grief in a way that kept me hooked until the last page', 5, 'Doctor Sleep'),
('Anya', 'Some sections drag, but the payoff and character work make it worth it. Not my favourite King, but very good', 4, 'Doctor Sleep'),
('Bea', 'Too long for its own good. Great ideas and moments of genuine dread, but it could have been tightened up by a couple hundred pages', 2, 'Doctor Sleep'),
('Noah', 'Brilliant atmosphere and several scenes that genuinely unsettled me', 5, 'Doctor Sleep'),
('Lizzy', 'A mixed bag: excellent setup and climax, some uneven pacing. Still I enjoyed the ride and the callbacks to The Shining', 4, 'Doctor Sleep'),
('Sophie', 'Funny, sharp, and full of heart', 5, 'Yes Please'),
('David', 'A witty peek into Amy’s world', 4, 'Yes Please'),
('Clara', 'The audiobook made me laugh nonstop', 5, 'Yes Please'),
('James', 'Great for Parks and Rec fans', 4, 'Yes Please'),
('Hannah', 'Honest and uplifting, but a bit scattered', 3, 'Yes Please');

-- creating new table for book details
CREATE TABLE book_details (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title TEXT,
  author TEXT,
  cover_url TEXT,
  synopsis TEXT
);

INSERT INTO book_details (title, author, cover_url, synopsis) VALUES ('The Midnight Library', 'Matt Haig', '/src/assets/the-midnight-library.jpg', 'The Midnight Library is a thought-provoking novel that explores the life of Nora Seed, a woman filled with regret and unhappiness. After a series of personal failures, Nora finds herself in a magical library between life and death. Each book in the library represents a different life Nora could have lived if she had made different choices. Through exploring these alternate lives, Nora discovers the profound truth about regret, possibility, and what it means to live a meaningful life.'), ('Doctor Sleep', 'Stephen King', '/src/assets/doctor-sleep.jpg', 'Struggling with alcoholism, Dan Torrance remains traumatised by the sinister events that occurred at the Overlook Hotel when he was a child. His hope for a peaceful existence soon becomes shattered when he meets Abra, a teen who shares his extrasensory gift of the "shine." Together, they form an unlikely alliance to battle the True Knot, a cult whose members try to feed off the shine of innocents to become immortal.'), ('Yes Please', 'Amy Poehler', '/src/assets/yes-please.png', 'In Amy Poehler’s highly anticipated first book, Yes Please, she offers up a big juicy stew of personal stories, funny bits on sex and love and friendship and parenthood and real life advice (some useful, some not so much), like when to be funny and when to be serious. Powered by Amy’s charming and hilarious, biting yet wise voice, Yes Please is a book full of words to live by.');

-- changed cover_url to images hosted online
UPDATE book_details SET cover_url='https://m.media-amazon.com/images/I/71qsovx-x6L._UF894,1000_QL80_.jpg' WHERE id = 1;
UPDATE book_details SET cover_url='https://m.media-amazon.com/images/I/71At7VPGc6L._UF1000,1000_QL80_.jpg' WHERE id = 2;
UPDATE book_details SET cover_url='https://m.media-amazon.com/images/I/81DYcliY0JL._UF1000,1000_QL80_.jpg' WHERE id = 3;

--added new column for url_slug and added data for existing entries
ALTER TABLE book_details ADD url_slug TEXT;
UPDATE book_details SET url_slug ='the-midnight-library' WHERE id =1;
UPDATE book_details SET url_slug ='doctor-sleep' WHERE id =2;
UPDATE book_details SET url_slug ='yes-please' WHERE id =3;