Title: There is no such thing as a "DevOps guy"
Slug: there-is-no-such-thing-as-a-devops-guy
Date: 2026-09-29 09:00
Tags: devops, culture, ownership, platform-engineering
Category: Cloud, DevOps
Summary: If DevOps is a person on your org chart, you are already doing it wrong. A slightly sarcastic look at what the "Dev" in DevOps actually stands for.
Status: published
Header_Cover: images/posts/there-is-no-such-thing-as-a-devops-guy/cover.jpg

Let me start with a confession. My CV says "DevOps Engineer". My LinkedIn says "DevOps Engineer". Recruiters send me messages that start with "Hi, we are looking for a DevOps guy".

And yet I have to tell you: there is no such thing as a "DevOps guy."

If DevOps is a person or a role in your company, you are already doing it wrong. I know, I know. I am a walking contradiction. Bear with me.

### A quick quiz: what does the "Dev" in DevOps stand for?

Take your time.

If your answer is "the people who write the code, before handing it over to the DevOps guy", congratulations. You have reinvented the wall that DevOps was supposed to tear down. You just painted it a new colour and put a Kubernetes logo on it.

The whole point of DevOps was to *expand* the responsibility of the development team. Not to create a new department called "DevOps" that sits exactly where "Operations" used to sit, receives the same tickets, and gets paged at the same 3 AM.

### The wall, rebranded

Here is how it used to work:

1. Developers write the code.
2. Developers throw it over the wall.
3. Operations catches it (or doesn't).
4. Something breaks in production.
5. "Works on my machine."

And here is how it works in many companies that "do DevOps" today:

1. Developers write the code.
2. Developers open a Jira ticket for the DevOps team to "add it to the pipeline".
3. The DevOps team writes 400 lines of YAML they don't understand for a service they have never seen.
4. Something breaks in production.
5. "Works in my container."

Progress.

If you look closely, what most organizations call DevOps nowadays is simply a sysadmin for development tools. Someone who babysits Jenkins, renews certificates, and gets asked why the build is red. That's a real and useful job. It's just not DevOps.

### No, this doesn't mean every developer becomes a network engineer

Before the angry comments arrive: no, I'm not saying every developer should suddenly become a network engineer, a DBA, and a Kubernetes administrator, all before lunch.

DevOps means something much simpler, and much harder:

> You don't throw software over the wall and say "Ops problem now."

The team owns getting its software safely into production *and* keeping it healthy there. Specialists still exist. Platform teams still exist, and a good one is worth its weight in GPUs. They provide infrastructure, tooling, and paved roads. But **ownership doesn't disappear at deployment.**

The key word is *team*, not *person*.

### Why ownership matters

I once read a comment from a developer with 30 years of experience that summed it up better than any conference talk I've sat through. Paraphrasing:

> I own my pipelines, using self-service tools provided by the platform team. Nobody configures them for me, because they represent *my* quality process. If someone else handles operations, I can deliver garbage and sleep well at night. I won't even know it's garbage, because my only feedback loop is Ops complaining.

Read that last sentence again. *My only feedback loop is Ops complaining.*

That's the real cost of the "DevOps guy" model. It isn't the salary, and it isn't the extra headcount. It's that the people who make the decisions never feel the consequences. When you're the one who gets paged because your service ran out of connections, you suddenly become very interested in connection pooling. Funny how that works.

In an organization that actually understands DevOps, the development team has **birth-to-death ownership** of:

- the problem,
- the solution,
- and the consequences of how it was solved.

Not "birth-to-merge". Not "birth-to-staging". Birth to death.

### Meanwhile, at Telegram

And now a small detour for everyone who believes the answer to every organizational problem is another layer of cloud-native tooling.

Telegram, one of the largest messaging platforms on the planet, has famously been built and run by a remarkably small team. Reportedly the recipe is strong C++ engineers, a well-tuned database layer, and serious hardware. No army of "DevOps guys". No 47 microservices per engineer. No service mesh for a service mesh.

And it clearly works, at a scale most "cloud-native" setups can only dream of.

I'm not saying you should throw away your Kubernetes clusters (please don't, I write blog posts about them). I'm saying that a small team that deeply owns what it builds will outperform a large organization where everyone owns a slice and nobody owns the outcome. Tools don't fix a missing sense of ownership. They just make the lack of it more expensive.

### So what should you do instead?

If you want DevOps rather than a DevOps department, here is the short version:

- **Stop hiring "a DevOps guy" to fix your culture.** One person can't carry a transformation that the rest of the organization refuses to make.
- **Build a platform team, not a ticket queue.** Their job is to make the right thing the easy thing: self-service pipelines, templates, golden paths. They shouldn't be deploying your code for you.
- **Let teams own their pipelines.** The pipeline is part of the product's quality process. Whoever writes the code should understand how it gets to production.
- **Put developers on call for what they build.** Nothing improves code quality faster than a pager.
- **Measure outcomes, not tools.** Deployment frequency, lead time, failure rate, and time to recover tell you far more than the number of YAML files in your repo.

### Final words from a "DevOps Engineer"

Yes, I'll keep "DevOps" on my CV. The industry uses the word, and I've made my peace with it.

But when someone asks me to "come and do the DevOps" for their team, my first question is always the same: *who is going to own this after I leave?*

If the answer is "you", then we have a problem. And it isn't a technical one.
