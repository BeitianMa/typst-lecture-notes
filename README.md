## Typst Lecture Notes Template
This is a lecture notes template based on [Typst](https://github.com/typst/typst). This template is designed to help students organise their note-taking materials or allow teachers to create more polished handouts. Any advice would be very welcome!

You can take a quick look at the [rendered pdf](example.pdf) to determine if it interests you.

### Usage
**Page organization:** The template will automatically create a cover and outline page based on the basic information given by the user, and set the header and footer to fit the content of each page. Just use

```
#show: note_page.with(title, author, professor, creater, time, abstract)
```

to complete the global settings.

**Text blocks and figures:** You can create blocks to highlight certain text. The template has predefined some classes of blocks. For example, you can create a **Definition** block by

```
#definition[your content]
```

Different classes of blocks are automatically labeled. By making some simple changes to the template, you can also define new block class. This is done by adding a new class name to the global variable `classes` and rewriting the `note_block()` function

```
#let classes = ("Definition", "Lemma", "Theorem", "Corollary", "MyClass")

// Choose any color you like!
#let myclass(body) = note_block(
  body, class: "MyClass", fill: rgb("#FFFFFF"), stroke: rgb("#666666")
)

#myclass[your content]
```

The `notefig()` function is used similarly to `figure()`, but is more consistent with the numbering rules in this template and supports the quick reference feature described later.

**Quick reference:** There are often connections between, for example, theorems and corollaries in lecture notes. Since each block is automatically labeled, you can easily link to any block using the `refto()` function

```
From #refto("Lemma 1.2.1"), we can get #refto("Corollary 1.3.2").

This result is consistent with the pattern in #refto("Figure 1.1.1").
```

### Thanks and related links
Typst non-official Chinese community provides a convenient communication platform, they are also committed to providing native Chinese speakers with quality learning materials, if you are interested in translating typst documents, please see [Typst Chinese document](https://github.com/typst-doc-cn/typst-doc-cn).

More community-created templates please refer to [awesome-typst](https://github.com/qjcg/awesome-typst).