Title: Nobody reads the code. What could possibly go wrong?
Slug: nobody-reads-the-code-what-could-possibly-go-wrong
Date: 2026-11-11 09:00
Tags: ai, vibe-coding, software-engineering, security, ownership
Category: Software, Design
Summary: Code is disposable, prompts are the new source code, and software engineering is apparently going the way of the floppy disk. A slightly sarcastic look at vibe coding, and why production still doesn't accept prompts as an apology.
Status: published
Header_Cover: images/posts/nobody-reads-the-code/cover.jpg

![An AI agent cheerfully deleting the production database, next to a pull request approved without anyone opening a single file]({static}/images/posts/nobody-reads-the-code/cover.jpg "LGTM")

Let me start with a confession. I use AI coding tools every day. They write my boilerplate, my test scaffolding, and more Terraform than I'd like to admit. I'm genuinely excited about where this is going.

And yet I believe "nobody needs to read the code anymore" is one of the most expensive ideas in our industry right now.

I'm aware of the irony, given how much of my own code an AI writes, but bear with me.

### The future, as advertised

There is an interesting narrative emerging around vibe coding. It goes roughly like this:

1. Code is becoming disposable.
2. Prompts are the new source code.
3. GitHub will become a prompt marketplace.
4. Every user will have their own personalized application, generated on demand by an LLM.
5. Software engineering, as we know it, is about to become as obsolete as the floppy disk.

It's a beautiful vision. Nobody reads the code. Nobody reviews it. Everybody trusts the prompt.

There is just one small detail missing from it.

Reality.

### Meanwhile, in the real world

While some people are busy declaring the death of traditional software engineering, the largest technology companies on the planet are taking a somewhat less romantic approach:

- **Amazon** has restricted certain third-party AI coding tools in favour of approved internal alternatives.
- **Meta** has introduced restrictions on Claude Code and Codex in certain engineering workflows.
- **Alibaba** reportedly prohibited employees from using Anthropic's Claude Code.
- **Apple** has blocked updates to popular vibe-coding apps such as Replit and Vibecode, and even removed Anything from the App Store (before temporarily restoring it).

Apple's reasoning is the interesting part. Its App Store rules restrict apps from downloading and executing code that changes their own functionality, or that of other apps. AI-generated code can introduce functionality that Apple has never reviewed or approved.

So, to summarize: the companies with the most engineers, the most money, and the most to gain from AI are the ones asking *"wait, what exactly is running on our platform?"*

How old-fashioned of them.

### Exhibit A: the creative database deletion

We also already know what happens when an AI agent is given a little too much freedom.

Remember the Replit incident? An AI coding agent deleted a production database, despite explicit instructions not to touch it. The instructions were clear. The agent was confident. The database was gone.

Now imagine explaining this to your CEO:

> "Well, the application was working perfectly. The AI just decided the database was no longer necessary."

Or perhaps the more modern version:

> "The prompt was correct. The generated code was just... creative."

I've sat through a lot of post-mortems. I have never seen one where "the code was creative" was accepted as the root cause.

### The same accountability gap, with a new name

If you read my post on [why there's no such thing as a "DevOps guy"]({filename}there-is-no-such-thing-as-a-devops-guy.md), this will sound familiar.

Here is how it used to work:

1. Developers write the code.
2. They throw it over the wall to Operations.
3. Something breaks in production.
4. Each side points at the other.

And here is how vibe coding works in many teams today:

1. The AI writes the code.
2. Nobody reads it, because it "works on the demo".
3. Something breaks in production.
4. Everybody points at the prompt.

The tools have changed, but the wall is still there. It just moved from between Dev and Ops to between the human and the code.

And there's an uncomfortable question hiding behind that wall: **if nobody reviews the generated code, who exactly is accountable when things go wrong?** The model doesn't get paged. The prompt doesn't attend the incident review. Your customers, auditors, and regulators will not accept "the LLM did it" as an answer, and I wouldn't recommend testing that theory.

### Let's be honest about a few things

None of this is anti-AI. It's simply what every engineer who has ever been woken up at 3 AM already knows:

- **A working demo is not production-ready software.** The demo has one happy user. Production has thousands of unhappy ones, plus a few who are actively trying to break in.
- **Passing a few tests doesn't mean an application is secure.** Especially when the same model wrote both the code *and* the tests that confirm the code is great.
- **Generated code can contain vulnerabilities nobody notices.** Hard-coded secrets, missing authorization checks, SQL built with string concatenation. It all looks perfectly reasonable if nobody looks at it.
- **An LLM doesn't automatically understand your business.** It doesn't know your architecture, your compliance requirements, your operational constraints, or that the "unused" table is the one finance reads once a quarter.
- **Ownership doesn't end at "it compiled".** Somebody has to understand the system well enough to fix it at 3 AM. If that somebody is "we'll ask the AI again", you're debugging production with a slot machine.

### Cars have autopilot. We still have brakes.

I genuinely believe AI will fundamentally transform software development. Prompts, context engineering, AI agents, and personalized applications will become increasingly important. I'd be foolish (and out of a job) to pretend otherwise.

But there is a rather amusing logical leap in assuming that because *generating* software is becoming cheaper, engineering *discipline* is becoming unnecessary.

That's like saying that because cars have autopilot, we no longer need brakes, traffic rules, or driving licences.

The cheaper and faster it gets to produce code, the *more* the guardrails matter, not less. You can now produce a year's worth of technical debt before lunch.

### What to do instead

If you want the speed of AI without the creative database deletions, here is where I'd start:

- **Treat generated code like any other code.** It goes through the same review, the same pipeline, and the same quality gates. "The AI wrote it" is not an exemption, it's a reason to look closer.
- **Never give an agent more access than you'd give a new intern.** No production credentials, no write access to prod databases, no "just run whatever you think is right". Least privilege applies to robots too.
- **Put the guardrails in the platform, not in the prompt.** "Please don't delete the database" is a polite request. A read-only role is a guarantee. Policies, separate environments, and backups don't care how confident the model sounds.
- **Automate the boring checks.** Static analysis, dependency and secret scanning, and security tests in CI catch a surprising amount of "creative" code before a human even has to look.
- **Keep a human accountable.** Every change that reaches production has an owner who understands what it does and can explain it at the incident review. Not the model. A person, and a team.

### Final thoughts from someone who uses AI every day

Perhaps the future isn't "no more software engineers."

Perhaps it's fewer people manually writing boilerplate, and more people responsible for architecture, security, validation, and governance. In other words: making sure the AI doesn't confidently destroy something expensive.

AI has dramatically reduced the cost of producing code. It hasn't reduced the cost of being wrong in production.

And unfortunately, production doesn't accept prompts as an apology.

---

*I help teams build platforms where speed and safety aren't a trade-off: CI/CD pipelines with real quality gates, Kubernetes environments with sensible guardrails, and observability that tells you what's actually running in production, whoever (or whatever) wrote it. If your team is adopting AI coding tools faster than its guardrails, take a look at [devops-consulting.link](https://www.devops-consulting.link).*
