# function to print a dataframe with specified country and condition

packageTemplateHC <- function(a,b) {
	library(bugsigdbr)
	biodata <- importBugSigDB()
	df <- subset(biodata, `Location of subjects` == a &
               Condition == b)
  
	  print(df)
}

packageTemplateHC("United States of America", "adenoma")
