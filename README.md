Improvements:

- Ordered reviews so the most recent review was displayed at the top (using id and DESC)
- Cleared the review display so reviews weren't duplicated on reload after successful submission. Connor's suggestion removed everything from my review display, instead of just the comments so I noticed the h4 component was removed on reload. So I had to be more specific to clear only the elements of the review-container. I couldn't use getElementById as this would only clear the first element (not all), so instead had to use querySelectorAll. That was a learning curve as I didn't realise getElementById only gets the first element matching the descriptor!

Issues:

- I had an issue when duplicating the entire project in my file explorer - the copy progress bar got to 99% and stayed there indefinitely. I tried a couple of times but each time it got stuck in the same place and I noticed the src folder was missing. So I instead manually created a new project and pasted across my code for each file. I lost a lot of time doing this.
- Creating multiple htmls is obviously not the way to go if this was a functioning website. I would have one html that generates based on the info in the database but I have no idea how I'd go about doing that.
- Though my get routes worked when testing with Postman, my client side was pulling through the midnight library reviews for all book pages. I think this is because my fetch route is only looking at the path /book-reviews not /book-reviews/doctor-sleep. I'm going to try to fix it with an if statement - which probably isn't very proper but we'll try. - It worked!
- I checked my post route was still functional and when I submitted a review via the client for Yes Please the title came through as Doctor Sleep in my database. I checked the form field and found that was showing correctly. A quick reboot of both my client and server seemed to fix the issue - I'm a bit confused as I had done node --watch server, but perhaps it was just the client side that needed rebooting.
