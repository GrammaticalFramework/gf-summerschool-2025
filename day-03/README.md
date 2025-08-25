# Day 3

We did:
- Finish the MicroLang from [day 2](../day-02/)
- Clarify some foundational concepts in GF, such as module structure and tables vs. records.
   - [Original slides](https://docs.google.com/presentation/d/1mjl_8-guV7c2aMJJSNWMfSw7XCYow5DW4cGZUJaiw9Q/edit?usp=sharing) (Inari)
   - [Written recap](https://harisont.github.io/lists/facs.html) (Arianna)
- Application grammar for people's job status [App.gf](App.gf) & [AppEng.gf](AppEng.gf), which uses the MicroLang as a library.

Example output from the application grammar:
```
pp> gr -number=4 | l -treebank
App: SJobStatus I Lecturer
AppEng: I work as a lecturer

App: SJobStatus Aarne BetweenJobs
AppEng: Aarne is between jobs

App: SJobStatus Hans Student
AppEng: Hans is a student

App: SJobStatus Inari Retired
AppEng: Inari is retired
```