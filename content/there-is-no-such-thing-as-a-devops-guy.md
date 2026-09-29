Title: There is no such thing as a "DevOps guy"
Slug: there-is-no-such-thing-as-a-devops-guy
Date: 2026-09-29 09:00
Tags: devops, culture, ownership, platform-engineering
Category: Cloud, DevOps
Summary: If DevOps is a person on your org chart, you are already doing it wrong. A look at what the "Dev" in DevOps actually stands for, and why ownership matters more than tooling.
Status: published
Header_Cover: images/posts/there-is-no-such-thing-as-a-devops-guy/cover.jpg

Let me start with a confession. My CV says "DevOps Engineer". My LinkedIn says "DevOps Engineer". Recruiters regularly reach out saying they are looking for "a DevOps guy".

And yet I believe there is no such thing as a "DevOps guy."

If DevOps is a single person or role in your company, something has gone wrong along the way. I'm aware of the irony, given my job title, but bear with me.

### What does the "Dev" in DevOps stand for?

It's a simple question, and the answer says a lot about how an organization works.

If the answer is "the people who write the code, before handing it over to the DevOps team", then the old wall between development and operations is still there. It just has a new name.

The whole point of DevOps was to *expand* the responsibility of the development team. It was never meant to create a new department called "DevOps" that sits exactly where "Operations" used to sit, receives the same tickets, and gets paged at the same 3 AM.

### The same wall, with a new name

Here is how it used to work:

1. Developers write the code.
2. Developers hand it over to Operations.
3. Operations deploys and runs it.
4. Something breaks in production.
5. Each side points at the other.

And here is how it still works in many companies that "do DevOps" today:

1. Developers write the code.
2. Developers open a ticket for the DevOps team to "add it to the pipeline".
3. The DevOps team writes pipeline configuration for a service they know little about.
4. Something breaks in production.
5. Each side points at the other.

The tools have changed, but the handover hasn't.

In many organizations, what gets called DevOps is really a sysadmin role for development tools: maintaining CI servers, renewing certificates, and investigating failed builds. That's a real and valuable job. It's just not what DevOps set out to be.

### This doesn't mean every developer becomes an infrastructure expert

To be clear, I'm not suggesting every developer should also become a network engineer, a DBA, and a Kubernetes administrator.

DevOps means something simpler, and in some ways harder:

> You don't throw software over the wall and say "Ops problem now."

The team owns getting its software safely into production *and* keeping it healthy there. Specialists still have an important place, and so do platform teams. A good platform team provides infrastructure, tooling, and paved roads that make the whole organization faster. But **ownership doesn't end at deployment.**

The key word is *team*, not *person*.

### Why ownership matters

I recently read a comment from a developer with 30 years of experience that summed this up better than most conference talks. Paraphrasing:

> I own my pipelines, using self-service tools provided by the platform team. Nobody configures them for me, because they represent *my* quality process. If someone else handles operations, I can deliver garbage and sleep well at night. I won't even know it's garbage, because my only feedback loop is Ops complaining.

That last sentence is the heart of it: *my only feedback loop is Ops complaining.*

This is the real cost of the "DevOps guy" model. It isn't the salary or the extra headcount. It's that the people making the decisions don't experience their consequences. When your own team gets paged because your service ran out of database connections, connection pooling quickly becomes a priority.

In an organization that understands DevOps, the development team has **birth-to-death ownership** of:

- the problem,
- the solution,
- and the consequences of how it was solved.

Not "birth-to-merge", and not "birth-to-staging". Birth to death.

### You build it, you run it

None of this is new. Back in 2006, Amazon's CTO Werner Vogels summed it up in four words: *"You build it, you run it."* Two decades later, many organizations still hire someone else to do the running.

Ownership changes how a team makes decisions long before anything reaches production:

- **Design.** A team that will be woken up by its own service thinks about timeouts, retries, and failure modes from day one, not after the first incident.
- **Observability.** Logs, metrics, and alerts stop being "something the DevOps team adds later" and become part of the definition of done.
- **Speed.** When the team controls its own path to production, releasing is a routine step, not a request in someone else's queue. Small, frequent changes are easier to review, easier to test, and easier to roll back.
- **Learning.** Incidents become feedback for the people who can actually fix the root cause, instead of tickets forwarded between departments.

Take ownership away, and every one of these gets worse. Not because people care less, but because the information they need to make good decisions ends up with someone else.

This is also why tools alone never solve the problem. You can give a team the best CI/CD platform, Kubernetes clusters, and observability stack available. If someone else is still accountable for what happens in production, you have simply automated the handover. Tools can support a culture of ownership, but they can't create one.

### What to do instead

If you want DevOps as a practice rather than a department, here is where I'd start:

- **Don't expect one hire to change your culture.** A single person can't carry a transformation the rest of the organization isn't ready to make.
- **Build a platform team, not a ticket queue.** Its job is to make the right thing the easy thing: self-service pipelines, templates, and golden paths. It shouldn't be deploying other teams' code for them.
- **Let teams own their pipelines.** The pipeline is part of the product's quality process, so the people who write the code should understand how it reaches production.
- **Put developers on call for what they build.** Few things improve reliability as consistently as a short feedback loop from production.
- **Measure outcomes, not tools.** Deployment frequency, lead time, change failure rate, and time to recover tell you far more than the size of your toolchain.

### Final thoughts from a "DevOps Engineer"

I'll keep "DevOps" on my CV. It's the word the industry uses, and that's fine.

But when someone asks me to "come and do the DevOps" for their team, my first question is always the same: *who is going to own this after I leave?*

If the answer is "the DevOps guy", we haven't solved anything yet. If the answer is "the team", we are already halfway there. DevOps isn't a job title, a tool, or a department. It's a team that owns its software, from the first commit to the last day it runs in production.
