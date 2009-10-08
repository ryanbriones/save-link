# Save Link

A sucky name for a fun side project to duplicate and add to the functionality that is Instapaper. I needed something to get things away from tabs that stayed open for weeks (maybe even months at a time) and Instapaper was convenient (Tweetie for iPhone integration) and easy to work with. Unfortunately I save A LOT of links and don't remember to read any of them. So my first idea was to write a script that queried Instapaper for 3 random URLs every day and emailed me to read them. Unfortunate for me Instapaper doesn't have an API for this. Also, I like Instapaper's "read as text" feature, but I'm really liking the way that Readability ([http://lab.arc90.com/experiments/readability/](http://lab.arc90.com/experiments/readability/)) works and I'd rather use that.

Plus, I like messing with Sinatra and DataMapper.

## TODO

* Archive link after reading it
* Bookmarklet submit links via AJAX
* Add a description to links like the tweet where I saw the link.
* Add ability to add notes for future self.
* Figure out how to make links Readability-ified

## LICENSE

Copyright (c) 2009 Ryan Carmelo Briones

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
