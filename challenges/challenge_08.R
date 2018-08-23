# Challenge 08 - "Weighted Sum of Digits"
# 3 Points + 2 Bonus Points

# Challenge Description:
# This program resembles more complex algorithms for calculation CRC and other checksums and also hash-functions on character strings. 
# Besides it will provide you with one more exercise on splitting values to decimal digits. 
# Let us calculate sum of digits, as earlier, but multiplying each digit by its position (counting from the left, starting from 1). 
# For example, given the value 1776 we calculate such weighted sum of digits (let us call it "wsd") as:

# Test-Case: wsd(1776) = 1 * 1 + 7 * 2 + 7 * 3 + 6 * 4 = 60

# Bonus: Use library(purrr) to achieve your answer

# Input Data (data/input_data_08.txt):
# 109 1969068 208 7722 66474 51 6063817 261157827 13921844
# 0 479611 105388531 11926861 194700418 2243427 117 7104
# 39974583 714165 1028593 84810 215 316 1121 112463 56
# 20402225 340779 77855875 38507245

# Your Code Here:

my_data <- read.delim("./data/input_data_08.txt",header= F)%>%
  apply(1,as.character)



wow <- function(x){x%>%
    str_split("")%>%
    unlist()%>%
    purrr::map(as.integer)%>%
    cbind(1:length(.))%>%
    as.data.frame()%>%
    transmute(new=as.integer(`.`)*as.integer(V2))%>%
    summarize(total = sum(new))}

purrr::map(my_data,wow)%>%
  unlist()

# Answer:
#Does using purrr::map count?


#total total total total total total total total total total total total total total total total total total 
#28   165    26    35    78     7   131   223   155     0    80   184   166   167   111    24    25   206 
#total total total total total total total total total total total total 
#85   139    44    19    23    13    73    17    90   128   227   149 