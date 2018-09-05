# Challenge 03 - "Sums of Pairs"
# 1 Point + 2 Bonus Point

# Challenge Description:
# Now we are given several pairs of values we want to calculate the sum for each pair.

# Bonus:
# Convert each string of pairs into numbers and find the sums

# Input Data contain pairs themselves - one pair at each line.

# Input Data (data/input_data_03.txt):
# 276235 745746
# 938006 54077
# 133493 701164
# 986771 847112
# 503300 439985
# 995004 731815
# 955237 43824
# 128892 970329
# 184215 41148
# 836202 594678
# 697906 810818

# Your Code Here:

#METHOD 1
my_data <- read.table("./data/input_data_03.txt") %>%
  as.data.frame()

rowSums(my_data)

#METHOD 2
my_data <- read_csv("./data/input_data_03.txt",col_names = F)

results <- list()
for (i in 1:length(my_data[[1]])){
  results[i] <- str_split(my_data[i,1]," ")%>%
    map(as.integer)%>%
    map(sum)
}

results


# Answer:

# 1021981  992083  834657 1833883  943285 1726819
# 999061 1099221  225363 1430880 1508724