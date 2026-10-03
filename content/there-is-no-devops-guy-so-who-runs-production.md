Title: There's no "DevOps guy". So who runs production?
Slug: there-is-no-devops-guy-so-who-runs-production
Date: 2026-10-04 09:00
Tags: platform-engineering, devops, culture, ownership
Category: Cloud, DevOps
Summary: A follow-up to "There is no such thing as a DevOps guy": what the debate in the comments taught me, and what a good platform team actually looks like when DevOps isn't a person.
Status: published
Header_Cover: images/posts/there-is-no-devops-guy-so-who-runs-production/cover.jpg

Last week I wrote that [there is no such thing as a "DevOps guy"]({filename}there-is-no-such-thing-as-a-devops-guy.md). If DevOps is a single person or role in your company, the old wall between development and operations is still standing. It just has a new name.

The post started one of the best discussions I've had in a long time. Engineers, developers, and platform people shared their experiences, pushed back, and added examples I hadn't thought of.

Reading through all of it, the comments fell into three camps. Each of them is partly right, and together they answer the obvious follow-up question: *if DevOps isn't a person, who actually runs production?*

### Camp 1: "DevOps is a culture, not a role"

This was the most common reaction, and I agree with it completely.

But "culture" is also where many DevOps transformations quietly die. Everybody agrees it's about culture, a slide in the all-hands says "we own what we build", and on Monday morning developers still open a ticket to get their service deployed.

A culture needs something concrete to stand on. If owning your service in production is painful, slow, or requires permission from another team, people won't do it, no matter how inspiring the slide was. The structure has to make the right behaviour the easy behaviour.

### Camp 2: "A good DevOps engineer owns everything. The buck stops here"

Several people described a very capable engineer: someone who builds the infrastructure across multiple clouds, fixes production when it breaks, sometimes patches the code directly, and then explains the problem to the developers afterwards.

I have a lot of respect for that attitude. "No blame, no *not my job*" is exactly the mindset every team needs.

But look at what happens to the feedback loop. Production breaks, the DevOps engineer fixes it, and the developers who wrote the code hear about it later, if at all. The bug comes back next sprint in a slightly different form, and the same engineer fixes it again.

That's not ownership. That's a superhero. And superheroes have two problems:

- **They don't scale.** One person can't carry the operational knowledge of every service in the company.
- **They go on vacation.** That's usually the week everyone finds out how much depended on them.

One commenter put the other side of this very clearly: "Faulty or buggy code is not my problem. Never was and never will be." It's an honest statement, and it's also the wall, seen from the operations side. When Dev says "not my infrastructure" and Ops says "not my code", production is the only one left holding the problem.

### Camp 3: "The team that builds it should get paged for it"

This was my favourite comment, because it's the one that actually changes behaviour:

> Ownership only becomes real when the same team gets paged. Once developers carry the pager for their own service, alerts get tuned and runbooks get written within a few weeks. Without that, "you build it, you run it" stays a slogan.

I've seen this happen many times. A service with hundreds of noisy alerts suddenly has a dozen meaningful ones. The "we'll add proper health checks later" item gets done this sprint. Nobody had to write a policy. The right people simply started feeling the consequences of their decisions.

Someone else pointed out that this idea is far from new. Factor X of the [Twelve-Factor App](https://12factor.net/dev-prod-parity) talks about closing the *personnel gap*: developers write the code, ops engineers deploy it. The Twelve-Factor answer is that the developers who wrote the code are closely involved in deploying it and watching its behaviour in production. It was written over a decade ago, and many org charts still haven't caught up.

### So who runs production?

Here's where the three camps come together.

The team that builds a service runs it in production. That's camp 3. But asking every product team to also build its own CI system, Kubernetes setup, secrets management, and monitoring stack from scratch would be slow, expensive, and inconsistent. That's where the operations expertise from camp 2 still matters. It just needs to be pointed in a different direction.

Instead of operating other teams' services, that expertise goes into a **platform team**: a team whose product is the internal platform, and whose customers are the other engineering teams.

The difference sounds small, but it changes everything:

| A DevOps ticket queue | A platform team |
|---|---|
| "Open a ticket and we'll add your service to the pipeline." | "Here's a template. Your pipeline is ready in ten minutes." |
| Operates other teams' services. | Builds tools so teams can operate their own. |
| Gets paged for everyone's bugs. | Gets paged for the platform. |
| Success = tickets closed. | Success = teams shipping without asking for help. |

### What a good platform team actually provides

From the teams I've worked with, the good platforms have a few things in common:

- **Self-service pipelines that teams own.** The platform provides the building blocks and sensible defaults. Each team owns its pipeline configuration, because the pipeline is part of its quality process.
- **Golden paths for the common cases.** Creating a new service, a new environment, or a new alert should be a template and a few minutes, not a project.
- **Security and observability built in.** Logging, metrics, tracing, and baseline security policies come with every service by default, instead of being added after the first incident.
- **Clear boundaries of responsibility.** The platform team owns the platform. Product teams own their services on top of it. Everyone knows which pager rings for what.
- **Documentation good enough that nobody needs to ask.** If people regularly have to "ask the DevOps guy" how to do something, that's a gap in the platform, not a support process.

One commenter gave the best benchmark I've heard for this. When a team sets up CI/CD in Azure DevOps, they don't call a DevOps guy at Microsoft to do it for them. The product is self-service, well documented, and good enough that they don't need to.

That's the bar for an internal platform. **The best platform is the one you never have to call.**

### The road and the drivers

If I had to sum up the whole discussion in one sentence:

> The platform team builds the road. The product teams drive on it, and own where they're going.

DevOps was never about a person, and it was never only about culture or only about tools. It's a team that owns its software from the first commit to the last day it runs in production, standing on a platform that makes that ownership possible.

Thanks to everyone who joined the discussion. You wrote half of this post.

---

*I help teams build exactly this: Kubernetes platforms, CI/CD pipelines, and observability that the teams own themselves, so they don't depend on me (or anyone else) after the engagement ends. If your organization is still stuck in the "DevOps guy" model, take a look at [devops-consulting.link](https://www.devops-consulting.link).*
