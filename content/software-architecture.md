Title: Software Architecture
Slug: software-architecture
Date: 2025-04-26 20:00
Tags: sw-arch
Category: Software, Design
Summary: In this blog post I discuss what software architecture is and why it is so important
Status: published
Header_Cover: images/posts/software-architecture/cover.jpg

Development of software systems often fails, in particular when development teams deal with larger, more complex systems. Throughout the last years I have analyzed the main reasons for these project failures, and most of them were related to software architecture problems.

Every software-intensive system has a software architecture, but the question is whether this architecture has been created in a clean, systematic way or just as a random by-product of software development. The latter might not be too much of an issue for a very small system, but certainly is for large systems.

In my experience, software architecture serves as the backbone of a high-quality system. But first of all, we need to understand what software architecture really means.

> Software engineering is conducted as a sequence of decisions where software architecture deals with all the decisions that have a system-wide impact.
>
> -- <cite>Len Bass</cite>

Whenever you need to change one of these decisions, this change will affect many system parts. Software architecture comprises the functional core of the system as well as strategic qualities such as performance or security.

> Software architecture is about everything costly to change
>
> -- <cite>Grady Booch</cite>

Architecture-relevant decisions mostly involve systematic mapping of key requirements to software architecture. Only when done in a systematic way can development teams verify they implemented the key requirements correctly. Only when the software architecture is known and documented can it be adapted should some of the key requirements change or evolve. Software architecture is also the best way to understand an existing system as it defines and mainly shapes the "machinery" of a software-intensive system. Architecture also comprises key guidelines and design decisions such as which patterns or tactics to use for recurring problems, and how to deal with systemic issues such as fault management.

A good example where bad architecture hurts is product lines, platforms, and ecosystems where the architecture defines a template that can be completed and refined to obtain a real product. Take Linux or Android as examples. If they had no sound, easy-to-understand architecture, they could not be evolved or adapted over time. Take Windows XP as an example where lack of good architecture caused the OS to erode and become unmaintainable after some years, which is why Microsoft completely designed a new architecture for Windows 7, 8, and 10.

> If you think good architecture is expensive, try bad architecture
>
> -- <cite>Brian Foote and Joseph Yoder</cite>

Some organizations start appreciating the value of software architecture only when it is absent or widely unknown.

People who deny the relevance of architecture should ask themselves whether they would build their home without architecture, have surgery by a doctor who has no plan, or fly in a plane that has not been designed with architecture as its foundation.

In some companies, software architecture is of utter importance, especially for large or complex systems. It is important to have good software architects in a project. By significantly improving the value of software architecture and software architects, far fewer projects fail. It is essential to document the architecture and make sure there is no drift between implemented and conceived architecture.
