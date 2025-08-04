---
layout: post
title: Interviewing
subtitle: Brief notes on my recent interview experiences
tags: [random]
author: Maureen Daum
---

If you enjoy feeling like an absolute dunce and losing about 20 IQ points, I highly recommend participating in interviews on the candidate side of the table.
Even ones that went well kept me up at night replaying all of the nonsensical things I said in a fog of stress.

And yet, the process was somewhat enjoyable when I treated it like a game where the goal was to improve and not repeat mistakes.
I was fortunate to line up a good number of interviews in a short period of time, so I had a tight feedback loop where I could attempt an interview, get feedback on how it went, and make corrections for the next one.
For multi-interview circuits, there would sometimes only be a few minutes between interviews to adjust.
Despite feeling stupid during and after the interviews, I had fun trying to adapt to the frequent feedback between them.

This post documents my recent experiences preparing for and navigating interviews for software engineering roles.
I'll note that I didn't use AI for any of these interviews, and none of the companies wanted me to use AI assistants in the interviews.

[Getting interviews](#getting-interviews)

[Coding questions](#coding-questions)

[System design](#system-design)

[Other interviews](#other-interviews)

[Takeaways](#takeaways)

# Getting interviews

The fastest way to get an interview was to go through a recruiter.
They could generally get a screening interview or call with a hiring manager scheduled within a few days of connecting.
I did the "looking for work" thing on LinkedIn, messaged a few recruiters who had reached out in the past, and got connected with recruiters through friends who recently interviewed.

Getting a referral from someone at the company didn't do much (unless that person was friends with the hiring manager and made a case specifically for me).

Cold-applying to job postings on the company's website generally worked but had longer turnaround time to get interviews scheduled (~1 month from applying to hearing back).

# Coding questions

It was shocking how bad I initially was at leetcode-style questions.
One recruiter suggested I take 2 weeks to prepare for a screening round, and I scoffed until I attempted a leetcode easy and was completely stumped.
Reasoning about these problems requires a different granularity of thinking than I was used to.

I don't think it's a productive use of time to rack up solves and try to memorize solutions.
_Maybe_ that helps get you through interviews, but it's definitely not helpful beyond that.

If I squinted, I could convince myself that working through these questions had value beyond interviews in learning how to recognize different problem patterns and techniques to solve them.
Reviewing leetcode questions was a good refresher on approaches that I don't often use, like dynamic programming.

**Resources:**
- [Cracking the Coding Interview](https://goodreads.com/book/show/55014663-cracking-the-coding-interview): It's a classic, but I like how it emphasizes patterns and general problem solving techniques over memorization.
- [neetcode.io](https://neetcode.io): Leetcode questions, but with videos that demonstrate how to approach the problem and work from a brute-force solution to something more optimized.

**Reflections:**
- If I were to do it again, I would practice in a more realistic setting and try to simulate as much stress as possible. This means:
    - Setting timers to add pressure.
    - Removing access to the debugger (some interviews ran the code, and I was initially clumsy at print-debugging since I'm used to inspecting variables in the debugger).
    - Forcing myself to work through the problems without jumping straight to the solution. When I started practicing, I looked at most solutions pretty quickly to ramp up on problem/solution patterns and remind myself of basic algorithms (DFS, BFS, tree traversal, etc.). That was useful, but I should have also spent more time getting comfortable working through problems without assistance.
- I found it helpful to have a note with basic reminders since performance anxiety caused me to forget obvious things. My note had a list of data structures, a reminder to first find the brute-force solution, and phrases like "I'm going to take a minute to think". _Super_ basic stuff, but after my brain short-circuited in the first coding interview, I realized the value in having these simple hints to get my thought process back on track.
- I didn't write perfect solutions to any of the coding questions in interviews, but I did a decent job of verbalizing my thought process: data structures I thought I needed, tradeoffs I was thinking about, edge cases I was ignoring, etc. I also tried to engage the interviewer and ask for suggestions when I was stuck. Basically, I tried to treat it like a pair programming task at work and demonstrate that I would be a good person to work with.
- People are asking pretty fun questions! Most coding interviews involved interesting toy problems that didn't rely on a key insight or trick. Many interviews consisted of a sequence of questions where each follow-up added complexity (e.g., first implement a solution in an idealized setting, then make it multithreaded or async).
- I did get asked a few questions that I don't think were useful assessments of someone's ability to do the job, but companies can ask what they want. And even in these cases, I could have done a better job of demonstrating positive attributes vs. getting flustered.
    - As an example, one interviewer asked a question about finding the cheapest path from a source to a destination in a graph. The interviewer wanted me to discuss how Dijkstra's algorithm and A* search could be used, but I didn't remember anything about these algorithms besides the fact that they exist. _What I did_: I mumbled something about how I didn't remember anything about Dijkstra's algorithm and implemented a botched BFS solution while feeling flustered. _What I should have done_: Clearly state that I didn't remember the specifics of Dijkstra's algorithm, but given a half hour could look it up and understand how it applied to the problem. Ask the interviewer if they'd like me to look it up, or if they'd prefer for me to implement what is likely a suboptimal solution given the algorithms I knew. Implement the suboptimal solution with less stress since everyone is on the same page that it's not optimal, but it's the best I can do given my knowledge during the interview. Maybe they really cared that candidates know graph search algorithms, and I still would have flunked the interview, but I would have given myself a better shot by showing how I handle problems when I don't know the domain.

# System design

I've now done infinitely more system design interviews (2) than I had a month ago (0), so I'm basically an expert.
Watch out for my upcoming book "Zero to Two: Notes on Navigating System Design Interviews".

**Resources:**
- [Acing the System Design Interview](https://www.goodreads.com/book/show/62241112-acing-the-system-design-interview): I didn't like this book, and I didn't finish it. It focused too much on "say this phrase and move on" vs. general knowledge and approaches.
- [Designing Data-Intensive Applications](https://www.goodreads.com/book/show/23463279-designing-data-intensive-applications): Overkill for system design interviews, but it's well-written and gives a great overview of hard problems in distributed data systems. I found it to be a thorough refresher for topics that I learned about in grad school but had forgotten the details of.
- [Hello Interview](https://www.hellointerview.com): Detailed system design breakdowns via articles and videos. They present a useful framework for approaching these questions, and the videos were great examples of what to expect in these types of interviews.

As an aside, CS book cover art makes no sense. What are an Indian wild boar and "a Tartar woman from the Tobolsk region" doing on the covers of these books??

**Reflections:**
- I followed the [delivery framework](https://www.hellointerview.com/learn/system-design/in-a-hurry/delivery) proposed by Hello Interview. This was helpful for structuring my thought process and ensuring I made progress throughout the interview.
- I approached these like I was talking through the problem with a coworker. If I mentioned a specific technology, I tried to mention how I've used it in the past ("We used Redis key/values for distributed locks, but I know that they also have a specific lock interface. I'd have to do some research to understand when to use each."). I also was upfront if I hadn't used a specific technology before ("I've read that Kafka can be used to manage streams, but I haven't used it. In a previous project we used Redis's stream interface.").
- I found these questions to require less specific preparation than the coding questions as I could pull from my experience. I had the most trouble when I was asked to design Ticketmaster and tried to remember Hello Interview's solution vs. trusting myself to reason through it.

# Other interviews

- **Deep dive**: walk through a project I worked on recently. This was fun; I was at a whiteboard and was able to explain the problem we were trying to solve, how we went about it, and how we addressed issues we ran into along the way. I prepared similarly to giving a talk where the emphasis was on how to present it as an engaging story where the audience would be invested and want to follow along. Instead of preparing slides, I worked out what diagrams I would draw and how they would build into each other.
- **Expertise**: answer questions specific to the problems the role was focused on. These felt like oral exams in grad school. I tried to be upfront when I didn't know the answer to a question. Often the interviewer kept pressing in these cases, so I made it clear that I was making stuff up and would propose ideas off-the-cuff.
- **Behavioral**: basic STAR stuff. I should have prepared more specific examples beforehand.
- **Code review**: given a small repository, explain what it does, debug some failing tests, and make suggestions for how to improve it. Another fun setup that didn't require specific preparation on my part.

# Takeaways

- I severely underestimated the impact of performance anxiety when someone is expecting you to be smart on the spot. I tried to focus on process over outcome to reduce the pressure on any one interview, but it's still stressful. It seems like most places accounted for some level of reduced performance as I had good outcomes from interviews where I definitely performed sub-par. If you're struggling to line up multiple interviews, I think it would be worth it to set up mock interviews to get practice dealing with the extra stress.
- It's noticeable when a company emphasizes interview skills. When the interviewer is calm and leads you in with a straightforward initial question before building on it, it sets a good tone for the rest of the interview.
- If you're giving interviews, it would be a good exercise to test your questions on your coworkers and see how they do. If they completely fail, maybe it's not a good question. If they do ok, maybe expect nervous candidates to do 10-20% worse.
