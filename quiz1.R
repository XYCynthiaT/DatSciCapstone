url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
if(!dir.exists("data")) dir.create("data")
download.file(url, "data/data.zip", mode = "wb")
unzip("data/data.zip", exdir = "data")

con = file("data/final/en_US/en_US.twitter.txt", open = "r")
twitter <- readLines(con)
close(con)
len <- nchar(twitter)
max(len)

con = file("data/final/en_US/en_US.blogs.txt", open = "r")
blogs <- readLines(con)
close(con)
len <- nchar(blogs)
max(len)

con = file("data/final/en_US/en_US.news.txt", open = "r")
news <- readLines(con)
close(con)
len <- nchar(news)
max(len)

love <- sum(grepl("love", twitter))
hate <- sum(grepl("hate", twitter))
love/hate

i <- grep("biostats", twitter)
twitter[i]

sum(grepl("A computer once beat me at chess, but it was no match for me at kickboxing", twitter))