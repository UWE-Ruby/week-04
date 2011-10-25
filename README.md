# Week 4

## Introduction

This week we take another step towards Test-Driven Development. Similar to how you were asked to make changes the Structs and OpenStructs to make the tests pass. Here again your job is to define the functionality of the methods that are described in the test suite.

### Outline

#### Exercise

* Fork and clone this repository
* Fix the tests on a branch
* Push your changes to Github on that branch

#### Reading

* [Git Branching](http://progit.org/book/ch3-0.html)
* [Methods](http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls)
* [Methods](http://ruby-doc.org/docs/ProgrammingRuby/html/tut_methods.html)
* [Enumerable](http://blog.jayfields.com/2008/03/ruby-inject.html)

## Exercise

The exercise are laid out in the same way as before, however there are still some subtle differences so I implore you to read the following closely.

* Fork and clone this repository
* Run Bundler
* Run the tests / Setup Guard
* Switch to the 'solutions' branch
* Write the methods required to make the examples pass in `lib/quotes.rb`
* Commit your changes to the 'solutions' branch
* Push your 'solutions' branch up to Github

### Switch to the 'solutions' branch

Usually working on the *master* branch is acceptable behavior. However, there is a common workflow pattern to create a branch and to put work on that branch. Branching in git is easy.

Before you commit any changes that solve this week's exercise I want you to create a `solutions` branch.

#### Create the branch

    $ git branch solutions
    
#### Move to that branch

    $ git checkout solutions
    
### Write the methods required to make the examples pass in `lib/quotes.rb`

A difference from last week, is that you should define the methods in the `quotes.rb` file found within the `lib` directory. This is so the implementation of your methods are independent of test files.

That means you will will be writing code in `lib/quotes.rb` that will make the tests, specified in the `spec` directory, to pass.

### Commit your changes to the 'solutions' branch

When you created and switched to the `solutions` branch all work that you add and commit will automatically be added to the `solutions` branch.

### Push your 'solutions' branch up to Github

When you are ready to push your solutions to Github you will specify your new branch name.

    $ git push origin solutions

This is nearly identical to the command you ran previously the exception being the word `master` is now replaced with 'solutions`.

