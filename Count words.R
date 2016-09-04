#Count number of words in a file

#read text from a file
rawdata <- read.table("jobomschrijving.txt", header= FALSE, fill= TRUE)
# convert data into vector
p <- as.vector(t(rawdata))
# convert data into one txt string and convert it into separate words
q <- strsplit(paste(p,collapse=" "), split = " ")
#count the frequency a word appears and order by the highest frequency
q <- as.data.frame(table(q))
st <- q[order(q$Freq, decreasing = TRUE ),]

##Clean up data
# remove signs
signs <- "~!@#$%^&*(){}_+:\"<>?,./;'[]-=" #or whatever
str_replace_all(signs, "[[:punct:]]", " ")
s <- gsub( "\n\'" , " " , r)






