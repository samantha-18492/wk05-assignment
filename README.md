Improvements:

- Ordered reviews so the most recent review was displayed at the top (using id and DESC)
- Cleared the review display so reviews weren't duplicated on reload after successful submission. Connor's suggestion removed everything from my review display, instead of just the comments so I noticed the h4 component was removed on reload. I had to be more specific to clear only the elements of the review-container. I couldn't use getElementById as this would only clear the first element (not all), so instead had to use querySelectorAll. That was a learning curve as I didn't realise getElementById only gets the first element matching the descriptor!
- Added a title to the existing database to allow for reviews on multiple books and changed existing get route to query only The Midnight Library reviews.
- Expanded the website to include two more books, adding a hidden input field on the form to collect title data when a new review is submitted, getting new get routes
- Created a dynamic homepage that is populated using a second table in my database. Ordered alphabetically and used url_slugs to help with deployment.
- Deployed a multi-page app using Render

Issues on the way:

- I wanted to create a duplicate of the project so I wasn't making direct changes to my week 4 project. I had an issue when duplicating the entire project in my file explorer - the copy progress bar got to 99% and stayed there indefinitely. I tried a couple of times but each time it got stuck in the same place and I noticed the src folder was missing. So I instead manually created a new project and pasted across my code for each file. I lost a lot of time doing this.
- Creating multiple htmls is obviously not the way to go if this was a functioning website. I would have one html that generates based on the info in the database but I have no idea how I'd go about doing that.
- Though my get routes worked when testing with Postman, my client side was pulling through the midnight library reviews for all book pages. I think this is because my fetch route is only looking at the path /book-reviews not /book-reviews/doctor-sleep. I'm going to try to fix it with an if statement - which probably isn't very proper but we'll try. - It worked!
- I checked my post route was still functional and when I submitted a review via the client for Yes Please the title came through as Doctor Sleep in my database. I checked the form field and found that was showing correctly. A quick reboot of both my client and server seemed to fix the issue - I'm a bit confused as I had done node --watch server, but perhaps it was just the client side that needed rebooting.
- When deploying on to Render, my homepage loaded but the data from my database wasn't pulling through. It turns out my script tag in my index.html was missing type="module". My individual book pages also didn't load despite having set up a vite.config.js. I spent a long time trying to figure out what the problem was but it turns out my file name had a typo of vit.config.js - thanks to Connor for spotting that!
- Render also didn't like me having spaces included in repository names e.g. "Doctor Sleep". I think this was because the browser was looking for /Doctor Sleep/ but during vite rollup the folder ended up looking like /Doctor%20Sleep/ and so the path it was looking for didn't exist. This is when I had the idea of creating a url_slug to use (instead of book.title in my forEach loop). In hindsight, I'm not sure if the spaces would've been an issue as this was before the vit.config.js problems.

Further improvements:

- I had every intention of adding a like button to each review comment, but I ended up running out of time (deployment issues took the best part of a day to resolve with a lot of trial and error)
- I would have loved to have changed the rating display from a numerical system to a star rating
- It would've been great to apply the same logic on the homepage with dynamically pulling the data through to the individual book pages, but again I just ran out of time - but I'm confident I know how I'd achieve this.

Reflections:

- This week’s project has been a really valuable experience for me. I’ve enjoyed having the time to figure things out on my own and it’s been rewarding to work through the logic step by step before applying it to an app. Even though I know that some of the ways I approached the tasks aren’t exactly how they’d be done in industry, I feel good about being able to come up with my own solutions using the concepts we’ve learned so far.
- One thing that really stood out to me this week is how different the experience is from a user perspective compared to the developer side. I feel like I've put in a lot of work this week, but when I look at the website as a user it doesn’t necessarily look like much has changed. It’s made me realise just how much goes on in the background that users never see, and how much we all take for granted when using websites or apps. It’s given me a new appreciation for the hidden complexity of development.
- Because I haven't worked in a group this week, I will need to revisit the git branching teaching to make sure I understand how this works and become more familiar with collaboration tools like Trello. I'd also like to review the how to have a successful project information - unfortunately I haven't been able to digest this yet.
