# statistical_bioinformatics
Statistical Bioinformatics course studies.

- Program: Bioinformatics M.Sc., University of Potsdam
- Semester: Winter 23
- Lecturer: Detlef Groth

## Penguins project
The main project is investigating the sexual dimorphism in penguins using palmer penguins dataset. Statistical analyses were performed and visualized in R markdown.

This research aimed at examining discernible variations in physical traits between male and female members of the Gentoo penguins (Pygoscelis papua). Measurements of body mass, bill length, bill depth and flipper length were considered for sexual dimorphism. Shapiro Wilk test revealed male bill length (p<0.05) and male flipper length (p<0.05) to be non-normally distributed. Fisher’s Exact Test revealed significant difference of traits among sexes (p<0.0001). Strong effect size of sex on body mass (Cramer’s V = 0.79), bill length (Cramer’s V = 0.65), and bill depth (Cramer’s V = 0.72) and flipper length (Cramer’s V = 0.71). Pearson residuals showed strong association between sex and these four traits, body mass and bill length were the strongest.

## Lipsum
A lipsum text generator using R.

Usage: `lipsum(type=1, paragraphs=1, lang="latin")`
Arguments: 
 - type - the lipsum block, either 1 (Lorem lipsum ...) or 2 (Sed ut perspiciatis ...), default: 1
 - paragraphs - integer, how many paragraphs, default: 1
 - lang - either 'latin' or 'english', default: 'latin'
Returns text paragraphs
