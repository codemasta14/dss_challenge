# Challenge 13 - "All your Base8^2"
# ????

cody <- "Q29uZ3JhdHVsYXRpb25zISBZb3UgaGF2ZSBzb2x2ZWQgQ2hhbGxlbmdlIDEzLiBZb3UgYXJlIG5vdyByZXdhcmRlZCAzMiBwb2ludHMu"

# Your Code Here:

s <- base64enc::base64decode(cody)%>%
  str_flatten()
#Janky code I found online that converts hexadecimal into ascii
h <- sapply(seq(1, nchar(s), by=2), function(x) substr(s, x, x+1))
rawToChar(as.raw(strtoi(h, 16L)))


# Answer:

#"Congratulations! You have solved Challenge 13. You are now rewarded 32 points."