Title: Coding Anti-Patterns
Slug: coding-anti-patterns
Date: 2025-02-28 21:01
Tags: sw-arch
Category: Software, Design
Summary: In this blog post I explain what anti-patterns are and why some of our colleagues cannot stop using them
Status: published
Header_Cover: images/posts/coding-anti-patterns/cover.jpg

#### Why anti-patterns are important

1. Anti-patterns are important for job security. You can use anti-patterns to obfuscate the code so much that nobody can understand it, and you will be the only person who can. Everyone in the team will ask, "How does it work?"

2. Revenge – if you are a disgruntled employee or maybe you want to watch the world burn, then anti-patterns are an excellent way to do it. The reason is that many people will not approve code that is obviously bad. You need the code to look at least legitimate to get through code reviews. Anti-patterns have that certain quality where it looks like the code is legitimate and good, and yet it will turn the code base into absolute mush over time. This sort of damage to code health is essentially irreversible. It will take a lot of time and effort for people to refactor and make it cleaner.  

#### Tips for creating anti-patterns

1. Create tons of functions. If you already have a function that is doing something, break it down into three or four other functions, and for each of those, break them down into other functions too. Soon the only way to read your code is to jump from function to function to function. It is essentially spaghetti code, and yet it is not going to look like it because everything is broken down into neat little functions, and you will be able to easily get this sort of code passed through code review. If anybody ever asks you why you are doing this, you could just say that you are making it more unit-testable.

2. Use as many one-liners and cryptic code as possible. If there are multiple lines of code, you can usually join them all together into a single line using, say, the `and` or `or` operator. I also love using bit manipulations; instead of using multiple booleans, you can combine them all into a single byte array and then do bit manipulation to figure out the boolean values. When people ask, you can just say that this is going to be more efficient.

3. Anytime there is an if statement, in the condition you put a double exclamation mark so you are taking the not-not of a value. Technically, this is more correct because it turns the value into an actual boolean before you compare it in the if statement. You can also put error checks all over the place and you can just say that they are there to guard your code against not only malicious users but potentially malicious developers as well.

4. Use recursion. While we all know that any recursive function can be made iterative, the reverse is also true. You can take any iterative function and make it recursive as well. What you do is you just create a recursive function, add an extra parameter that is the iteration count, and you increment that each cycle. This essentially simulates a for loop.
