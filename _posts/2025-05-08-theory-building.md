---
layout: post
title: Programming as Theory Building in a World of Vibe Coding
subtitle: What AI tools need to deliver to unlock long-term productivity gains
tags: [llm, developer]
author: Maureen Daum
---

It's been a long time since I've been excited to read a paper.
I'm coming out of a period of burnout after wrapping up my Ph.D. and jumping back into industry.
Thankfully things are coming back online after a few months of turning my brain off, and I was actually looking forward to reading an article that I bookmarked a while ago: Peter Naur's ["Programming as Theory Building"](https://pages.cs.wisc.edu/~remzi/Naur.pdf).
This article resonates with my personal curiosity about why I enjoy programming.
I'm not particularly interested in computers or tools or languages---so why am I excited to be in this profession?
The article's framing of programming as a process of theory building aligns with how I experience programming when I enjoy it most.

I'll note that this post is written from the perspective of an enthusiastic amateur:
I haven't actually used an AI IDE yet (e.g., [Cursor](https://www.cursor.com) or [Windsurf](https://windsurf.com) ([RIP](https://www.bloomberg.com/news/articles/2025-05-06/openai-reaches-agreement-to-buy-startup-windsurf-for-3-billion))), but I regularly use [Copilot](https://github.com/features/copilot), [ChatGPT](https://chatgpt.com), and [Claude](https://claude.ai) to generate code snippets that I incorporate into projects.
I find it improves my productivity on certain tasks (formulating regex's, writing a bash script, or creating a v0 of a project) and slows me down when I'm in a flow state and know exactly what I want to produce (["acceleration mode"](https://arxiv.org/pdf/2402.11364)).
I also have no background in the academic study of the human side of programming, but as a human programmer I have opinions and think it's a relevant article given the interest in [using AI-enhanced tools or editors]((https://www.reddit.com/r/ClaudeAI/comments/1jqp3io/im_unashamed_to_say_i_have_turned_into_a_vibe/)) to boost productivity (and [shrink workforces](https://www.theregister.com/2025/02/27/salesforce_misses_revenue_guidance/)).

Before actually discussing the article and how I see it relating to the conversations going on today, I want to clarify what this post is _not_ about:
* This is not a discussion [about](https://www.cyberdemon.org/2023/03/29/age-of-ai-skill-atrophy.html) [skill](https://addyo.substack.com/p/avoiding-skill-atrophy-in-the-age) [decline](https://nmn.gl/blog/ai-illiterate-programmers) in the age of AI.
* This is not about building theories of the AI systems themselves (a la [interpretability](https://www.anthropic.com/news/tracing-thoughts-language-model)).

## Programming as Theory Building
Peter Naur's 1985 article ["Programming as Theory Building"](https://pages.cs.wisc.edu/~remzi/Naur.pdf) argues that the key outcome of programming is the theory developed and held by the programmers.
Here "theory" refers to an understanding of how each part of the program maps to the problem being solved and vice versa.
This is in contrast to viewing programming as an activity that produces text (code, documentation, specifications, etc.).
He argues that it is crucial for programmers to understand the theory to effectively modify and evolve programs over time.

This thesis strongly resonates with what I experience when I feel most productive.
The best programmers aren't the ones that can type the fastest, but the ones who can effectively utilize a mental model (theory) of the program to implement changes.

A well-developed mental model allows programmers to quickly hypothesize about the root cause of bugs given sample reproductions because they can visualize how different output paths may be reached.
It also lets them reason about how to best incorporate additional features given the program's existing architecture and the interfaces between components.
Effective programmers incrementally update their mental model as a program evolves and add to the model as they work with a broader portion of the system.

To state the obvious, being able to produce text quickly isn't useful if you don't know what text to write.

## Squaring Theory Building with AI Coding Tools

The current discussion and evaluation of AI coding tools views them as tools for text-production.
Their value is measured by whether the text they produce executes and produces the desired outputs (lines of code, PR comments, functional prototypes, etc.).
On this measure, the tools are improving, and I expect them to continue to get better given the increasing context lengths that let models consider complete codebases.

However, AI coding tools fall short in handing off the generated code to the programmers that are ultimately responsible for the system.
Enabling programmers to efficiently extend or fix programs, or transform [70%-functional prototypes](https://addyo.substack.com/p/the-70-problem-hard-truths-about) into robust applications, requires tools that go beyond text generation.
Productivity requires that programmers be skilled in [assessing and integrating AI responses](https://www.microsoft.com/en-us/research/wp-content/uploads/2025/01/lee_2025_ai_critical_thinking_survey.pdf); this means that programmers need to grasp of the current program's theory and determine whether AI responses are compatible.

In my mind there are two key settings to consider:

The first setting is **bootstrapping the theory of a program**.
AI coding tools create prototypes in minutes that would take a person hours or days to build.
However, for a programmer to effectively build on the prototype they need to understand how the generated program works.
It doesn't take a programmer days to type all of the program text, it takes them days to build the theory of the program to know what text to type.
To my knowledge there aren't yet tools that speed up this process of "theory-bootstrapping" (and it seems reasonable to expect that different programmers use different processes to onboard to a new codebase; I'm partial to using [the debugger](https://maureendaum.com/2025-04-10-vscode-debugging/)).
For large projects theory bootstrapping is faster than writing it from scratch, but in my experience it's slow enough to be a bottleneck in fully leveraging the power of AI coding tools.

The second setting is **evolving the theory of a program**.
AI coding tools generate entirely new files or suggest ad-hoc code snippets during the development process.
Humans verifying the changes need to evaluate whether the diffs are reasonable given the new requirements vs. current program state.
This requires programmers to have a solid grasp of the current theory of the program and map new code to this theory.
Programmers already do this during code reviews, however they do it best when reviewing small changes ([O(100) LOC at a time](https://smartbear.com/learn/code-review/best-practices-for-peer-code-review/)).
This is significantly slower than AI coding tools can generate changes.
While AI can [also](https://cognition.ai/blog/devin-101-automatic-pr-reviews-with-the-devin-api) [review](https://www.qodo.ai/products/qodo-merge/) [code](https://www.coderabbit.ai), it risks programmers losing context on the evolving program theory when they are out of the loop for incremental changes.
It's like like trying to recover context after coming back from vacation, but every day instead of a few times a year.

## Looking forward

This post is a reflection on challenges of integrating AI coding tools into software engineering teams written from the perspective of an engineer.
In my opinion there are a few important areas that aren't being emphasized enough in the current discourse:
* **Improved tooling for verifying and integrating AI-generated code**: Tools need to go beyond generating code to additionally support the programmers (who are ultimately responsible for the system behavior) to understand the _how_ and _why_ behind the generated code. This requires viewing programming as a process of theory building rather than a process of text generation.
* **Increased emphasis on code review as a skill**: Being able to onboard to new projects and evaluate code that you didn't write is a different skill than authoring new code. In my experience this isn't taught in college, and junior engineering roles don't emphasize reviewing code. While it probably doesn't make sense for juniors to be the sole reviewer of PRs, they do need practice building this skill, especially now that they are expected to integrate AI-generated code into their own PRs.
