Improvements:

- Ordered reviews so the most recent review was displayed at the top (using id and DESC)
- Cleared the review display so reviews weren't duplicated on reload after successful submission. Connor's suggestion removed everything from my review display, instead of just the comments so I noticed the h4 component was removed on reload. So I had to be more specific to clear only the elements of the review-container. I couldn't use getElementById as this would only clear the first element (not all), so instead had to use querySelectorAll. That was a learning curve as I didn't realise getElementById only gets the first element matching the descriptor!

Issues:

- I had an issue when duplicating the entire project in my file explorer - the copy progress bar got to 99% and stayed there indefinitely. I tried a couple of times but each time it got stuck in the same place and I noticed the src folder was missing. So I instead manually created a new project and pasted across my code for each file. I lost a lot of time doing this.
