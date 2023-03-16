---
title: "Tree Borrows"
subtitle: A new aliasing model for Rust
author: Neven Villani
date: Mar. 2023
output: html_document
lang: en
---

Tree Borrows is an optional alternative to [Stacked Borrows](https://www.ralfj.de/blog/2019/05/21/stacked-borrows-2.1.html)
that fulfills the same role: to analyse the execution of Rust code at runtime
(so actually MIR rather than Rust) and declare the limits of the aliasing constraints.
When the aliasing assumptions are considered to have been violated, the code is declared UB.

---

The current version of Tree Borrows is implemented in the [Miri](https://github.com/rust-lang/miri/)
interpreter under the folder `src/borrow-tracker/tree-borrows/`.
Compared to [the detailed description](https://github.com/Vanille-N/tree-borrows/blob/master/half/main.pdf),
this document is more accessible and more example-oriented.

- Part 1: [Core Model](core.html)
    (mutable references and accesses)
- Part 2: [Sharing Data](shared.html)
    (shared references)
- Part 3: [Introducing Protectors](protectors.html)
    (function calls and the `noalias` attribute)
- Part 4: [Dealing with Cells](interiormut.html)
    (interior mutability and raw pointers)

---