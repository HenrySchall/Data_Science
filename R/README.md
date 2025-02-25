## Introdução
- Download R: https://cran.r-project.org/bin/windows/base/
- Comunidade: https://rpubs.com/

> R is an open-source programming language for statistical computing, widely used in data analysis. The language was created by Ross Ihaka and Robert Gentleman at the University of Auckland, New Zealand, in the early 1990s. They were motivated by the desire to develop a programming language that was powerful for statistical analysis and at the same time accessible and flexible, as a free alternative to the S language

### Setting up R for use in Visual Studio Code

```r
# Run in the R terminal
install.packages("languageserver")
install.packages("httpgd")
```

```r
# Preferences (Open User Settings (JSON)
"editor.quickSuggestions.other": false
r.lsp.diagnostics": false
"r.plot.useHttpgd": true
```
### Data Types
Qualitative (non-numeric attributes).
- Nominal: Denominations (colors, gender, race, titles, etc.)
- Ordinal: attributes that can be classified (e.g., rating of most-watched movies, level of education, level of satisfaction, etc.).

Quantitative (numerical attributes).
- Discrete: finite or enumerable values ​​(number of people in a room, number of cars in a parking lot, etc.)
- Continuous: infinite possible values ​​in an interval (income, time, height, etc.).


