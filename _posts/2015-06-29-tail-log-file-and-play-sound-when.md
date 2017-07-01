---
layout: post
title: Tail Log File And Play A Sound When Keyword Hit
date: '2015-06-29T14:33:00.002+01:00'
author: Richard Bradshaw
categories:
- Automation in Testing
- Community
tags:
- Automation
- Tools
modified_time: '2015-07-01T10:15:49.248+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-9024800587165443551
blogger_orig_url: http://www.thefriendlytester.co.uk/2015/06/tail-log-file-and-play-sound-when.html
permalink: /2015/06/tail-log-file-and-play-sound-when.html
---

So on the [testers.chat](http://testers.chat/) Slack team today, [Maik](https://twitter.com/MaikNog) messaged:-  

>Does anyone know a way/tool to watch a log file and play an audio sound, if a certain keyword is found (e.g. ERROR) there is "log watch" for windows from James Bach, but I am looking for a Macintosh

Having only had a mac for about 8 months now, I have been using the terminal more and more. I immediately thought upon reading Maik message that this must be possible. Now I knew how to tail the log file but I wasn't sure about playing the sound. Turns out on linux you can use aplay, however doesn't seem to exist on the mac, but a few googles more and I discover that the mac has afplay. I simply googled to find a beep .wav file for use with this.  

So I gave it a go, and success was had!  

<div class="centerplugin">
{% gist FriendlyTester/f76722aeee286cfaeade %}
</div>

Now the funny bit, well wasn't funny at the time, but it is now. As I was testing this, I created log.txt and was editing it in Sublime and the sound would play when I added "ERROR" to a new line in the file. Success? Not quite, it would also beep for every "ERROR" in the file. Unable to work out why this was, I told Maik I was done, but informed him of this "feature". Decided it was a feature and not a bug, he could it use to see how the day had gone. If the final error beep of the day lasted for a few minutes, well then that would have been a day full of errors!  

But I was left feeling unsatisfied with my work. So I broke the script down and tested it in individual sections, the logic was sound, it was doing what I expected it to, but not working as per my goal.  

Turns out, Sublime doesn't append text, instead it overwrites the existing file! So my script was behaving correctly when it played the beep for all the errors thus far, because as far as tail was concerned all the lines were new! So I decided to see how I could append a new line to an existing file without overwriting the whole file. Turns out its actually quite easy.  

{% highlight bash %}
echo "sdasdsa" >> log.txt 
{% endhighlight%}

The above command would do this for you. So I tested using this, and low and behold, only beeps when a new line is entered containing "ERROR" and it only plays once.  

So there you have it, a fun 30 minutes was had by all. I learnt some more about shell and using the terminal and Maik got a script, that he later confirmed works for him.  

I never asked Maik what his particular requirement was for this tool, but its something I have done in the past before, and as Maik mentioned in this original post, James Bach built ["log watch"](http://www.satisfice.com/tools.shtml) for windows.  

Log files are used to capture unexpected errors and to provide information on the product, information that is gold to a tester. So why not monitor it in real time, and having a sound play on certain matches is a nice way to get your attention. Can be very useful when in a testing session, as the beep may alert you to something you hadn't seen, but caused an error. For instance the UI may not report any problem at all, but being alerted to an error, may mean you actions had actually caused this, but you would have never known if not monitoring the logs. Reading them after the event would alert you to the fact there were errors, but being after the event would make it harder to reproduce, to work out what caused the error. So using such a tool or script to alert you can lead to some interesting discoveries.  

This is exactly the kind of thing I want to hear more about with regards to how automation is used within testing. For me this is a fantastic use of automation, the type of automation I talk about, automation that really supports the tester. We need more of these things. It's nothing new, but perhaps gets less focus in some teams due to pressure to produce automated checks. But this whole thing took me 30 minutes, I can only imagine, but in my experience of using "log watch" this will repay itself many times over for Maik and others who decide to use it.  

Happy log monitoring. There was talk of playing the Benny Hill theme tune upon a match, this is of course completely optional :D but highly encouraged.  

p.s. Here is a follow up [post](http://hanseatictester.info/?p=566) from Maik. 