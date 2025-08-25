## as a `Role`, I want to `Action`

Usage:

```
$ gf AppAPIAr.gf
Languages: AppAPIAr
App> gt | l -bind -tabtreebank
SAsRole Developer Merge كَمُطَوِّرٍ أُرِيدُ أَنْ أَدُْْمجَُ
SAsRole Developer Read  كَمُطَوِّرٍ أُرِيدُ أَنْ أَقْرَأَ
SAsRole Developer Search        كَمُطَوِّرٍ أُرِيدُ أَنْ أَبُْْحَثَ
SAsRole EndUser Merge   كَمُسْتَخْدِمٍ نهائيِيٍّ أُرِيدُ أَنْ أَدُْْمجَُ
SAsRole EndUser Read    كَمُسْتَخْدِمٍ نهائيِيٍّ أُرِيدُ أَنْ أَقْرَأَ
SAsRole EndUser Search  كَمُسْتَخْدِمٍ نهائيِيٍّ أُرِيدُ أَنْ أَبُْْحَثَ
```

Changes:

- Removed `Person` from abstract syntax: if all statements are in 1st person, no need to have explicit Person
   - Alternative 2: if we want gender variants of the roles, we can add Person into abstract syntax, but it would only contain a param for gender, and it'd be used to choose a noun from `Role`.
- Removed `wantToAction` from abstract syntax: if all statements are about wanting to do an action, it can just be added to all sentences.
- Examples of how to construct a verb with `mkV`
