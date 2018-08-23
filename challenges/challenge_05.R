# Challenge 05 - "Fahrenheit to Celsius"
# 2 Points

# Challenge Description:
# There are two widespread systems of measuring temperature - Celsius and Fahrenheit. 
# First is quite popular in Europe and second is well in use in United States for example.
# By Celsius scale water freezes at 0 degrees and boils at 100 degrees. 
# By Fahrenheit water freezes at 32 degrees and boils at 212 degrees. 
# You may learn more from wikipedia on Fahrenheit. Use these two points for conversion of other temperatures.
# You are to write program to convert degrees of Fahrenheit to Celsius.

# Input Data (data/input_data_05.txt): 
# 508 378 203 595 261 256 347 449 240 237 369 519 522 63 54 118 408 43 
# 162 324 173 380 59 323 360 580 513 33 384 123 544 292 469 147 286 130 
# 372 32 547

# Your Code Here:


my_data <- read.table("./data/input_data_05.txt")%>%
  as.data.frame()

convert <- function(temp){
  (temp-32)*(5/9)
}
apply(my_data,1,convert)

# Answer:

#264.4444444 192.2222222  95.0000000 312.7777778 127.2222222 124.4444444 175.0000000 231.6666667 115.5555556
# 113.8888889 187.2222222 270.5555556 272.2222222  17.2222222  12.2222222  47.7777778 208.8888889   6.1111111
#  72.2222222 162.2222222  78.3333333 193.3333333  15.0000000 161.6666667 182.2222222 304.4444444 267.2222222
#   0.5555556 195.5555556  50.5555556 284.4444444 144.4444444 242.7777778  63.8888889 141.1111111  54.4444444
#[37] 188.8888889   0.0000000 286.1111111