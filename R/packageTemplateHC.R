# function to print a dataframe with specified country and condition

packageTemplateHC <- function(location, condition) {
	library(bugsigdbr)
	biodata <- importBugSigDB()
	df <- subset(biodata, `Location of subjects` == location &
               Condition == condition)
  
	  print(df)
}

packageTemplateHC("United States of America", "adenoma")
