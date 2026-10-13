#!/bin/sh
# Run from the folder that CONTAINS Assignment/ (the repo root).
# First: git config user.name "Your Name"; git config user.email "you@example.com"
set -e
git init
git branch -M main
git add Assignment/.gitignore Assignment/README.md;                                git commit -m "Add project skeleton, README and gitignore"
git add Assignment/src/com/hcl/library/model/Borrowable.java Assignment/src/com/hcl/library/model/LibraryItem.java \
        Assignment/src/com/hcl/library/exception/ItemNotAvailableException.java Assignment/src/com/hcl/library/exception/LibraryException.java
git commit -m "Add LibraryItem abstract class and Borrowable interface"
git add Assignment/src/com/hcl/library/model/Book.java Assignment/src/com/hcl/library/model/Magazine.java Assignment/src/com/hcl/library/model/DVD.java
git commit -m "Add Book, Magazine and DVD with late fee polymorphism"
git add Assignment/src/com/hcl/library/model/Member.java;                          git commit -m "Add Member with email validation and overloaded constructor"
git add Assignment/src/com/hcl/library/exception;                                  git commit -m "Add custom exception hierarchy"
git add Assignment/src/com/hcl/library/repository;                                 git commit -m "Add generic Repository and InMemoryRepository"
git add Assignment/src/com/hcl/library/util;                                       git commit -m "Add CollectionUtils and LRU SearchCache"
git add Assignment/src/com/hcl/library/service;                                    git commit -m "Add LibraryService with borrow, return, waitlist and report export"
git add Assignment/src/com/hcl/library/Main.java;                                  git commit -m "Add console menu in Main with exception handling"
echo "Now: git remote add origin https://github.com/<username>/hcl-java-training-<rollno>.git && git push -u origin main"
