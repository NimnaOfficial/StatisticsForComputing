* Encoding: UTF-8.
* 1. DESCRIPTIVE STATISTICS (For your computed factors).
DESCRIPTIVES VARIABLES=IV1_Algo IV2_Influencer IV3_Echo IV4_Culture DV_Addiction
  /STATISTICS=MEAN STDDEV MIN MAX.
EXECUTE.

* 2. CHI-SQUARE TEST (Gender vs Platform).
* If SPSS throws an error here, replace the @ variables with your exact names from the list.
CROSSTABS
  /TABLES=@1.2Whatisyourgender BY @1.5Whichdigitalmediaplatformdo
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ
  /CELLS=COUNT.
EXECUTE.

* 3. ONE-WAY ANOVA (Age Group vs Addiction).
* If SPSS throws an error here, replace the @ variable with your exact Age name.
ONEWAY DV_Addiction BY @1.1Whatisyouragegroup
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS.
EXECUTE.
