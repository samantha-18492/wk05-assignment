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