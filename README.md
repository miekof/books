This repository contains API calls to book search API's (Open Library, Google Books, WorldCat and the Library of Congress) for [Chicago Books For Women in Prison](https://chicagobwp.org/) Project. This experiment was conducted to see how well each API performs, i.e. examining type of data provided by each API.

# Problem and Solution
[Chicago Books For Women in Prison](https://chicagobwp.org/) receives many books as donations. It takes a lot of human power to organize them; entering books in the database so that they are searchable when a request is submitted. This is currently done by manually entering all the information. In order to speed up the process, the organization wants to scan bar code and filling some of the information automatically based on ISBN.

# Experiment
## Books
To examine each API performance, the following books are selected. The selections are based on a typical books the organization has on their shelves.

| Title | Author | ISBN-13|
|---|---|---|
|Feelings Buried Alive Never Die|Karol K. Truman|9780911207026|
|Exercise for Mood and Anxiety: Proven Strategies for Overcoming Depression and Enhancing Well-Being|Michael Otto, Jasper A.J. Smits|9780199791002|
|Stolen: The True Story of a Sex Trafficking Survivor|Katariina Rosenblatt, Cecil Murphey|9780800723453|
|We're All Doing Time: A Guide to Getting Free|Bo Lozoff, Dalai Lama|9780961444402|
|12 Stupid Things That Mess Up Recovery: Avoiding Relapse through Self-Awareness and Right Action|Allen Berger|9781592854868|
|Overcoming Crystal Meth Addiction: An Essential Guide to Getting Clean|Steven J. Lee|9781569243138|
|Mujer Reposiciónate: Revela tu diseño y no dejes que nada te robe la esencia|Yesenia Then|9789945894752|
|Ravensbruck: Life and Death in Hitler's Concentration Camp for Women|Sarah Helm|9780307278715|
|Crank|Ellen Hopkins|9781442471818|
|Girl, Wash Your Face: Stop Believing the Lies About Who You Are So You Can Become Who You Were Meant to Be|Rachel Hollis|9781400201655|

## API's
The following API's are selected for the experiment. The selection criteria is:
* Free of charge
* Ability to search using ISBN-13

### Open Library
https://openlibrary.org/dev/docs/api/books (book info)
https://openlibrary.org/dev/docs/api/covers (cover images)

### Google Books
https://developers.google.com/books/docs/v1/reference/volumes

### WorldCat
xISBN search
http://xisbn.worldcat.org/xisbnadmin/index.htm

xISBN search returns url:
http://www.worldcat.org/title/stolen-the-true-story-of-a-sex-trafficking-survivor/oclc/869268881?referer=xid#relatedsubjects
And related subjects might be very useful. Is there API?

### Library of Congress
https://www.loc.gov/standards/sru/misc/simple.html
https://www.loc.gov/standards/sru/sru-2-0.html

## Search Results
The raw outputs are shared at: https://drive.google.com/drive/folders/1WGma3GyIkWflxeyispPX9-HXD5ilAsT-

## Analysis
To be Conducted
