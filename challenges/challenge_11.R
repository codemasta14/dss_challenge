# Challenge 11 - "Palindromes"
# 3 Points

# Challenge Description:
# The word or whole phrase which has the same sequence of letters in both directions is called a palindrome.

# Example: hannah, racecar, was it a cat i saw

# Your goal is to determine from the input data which inputs are palindromes and which are not.
# Please note that palindromes do not account for spaces or punctuation.
# Your answer should be recorded as a vector of boolean values.

# Input Data (data/input_data_11.txt):
# Ug-ea-Oyohg-c-Nr, ncghoyo, A-Egu
# Exnyypao Paiarm Doxi U fy-Zv wiwvzyf-Uixodmr, Aiapo apyynxe
# Twua, geveuyeyi i, yeyue-v egauw-t
# Ov Fuk Aky, yk A xufvo
# A-qzabxuqiiqu, aofviiu, Foauqii Quxbazqa
# X kab-Bo Dmeimlmi, Emdob-Ba, kx
# Nrehjruhttclxoy-fx-X-Fyoxlctthurjhern
# Ya-Ootehfezcixyujlrlyd Ylrljuyxi czefhe-Tooay
# Ogezedtiq, Iqi-t dez E-go
# Eeb, uyzelqoezyhoiasoqjqosaiohyzeoqlezyuoee
# J-ivhp-o U-opy Hvi j
# Y-X-iecyknk-Y, cei, Z-Y
# Eiye hi s-zvmfkuqzt-Cqils-txseesxtsliqct, zquk Fmv, zsiheyie
# Hrsl-Owgjvpiuq, amiw kecbzf, Iiifzbcek, wimaquipv jgwollrh
# Eyelimb xwbbwxbmileye
# Frlwicyieacvmoz, Iy, Laal-Yizomvca Eiyciw, lrf
# Lcyl, ookyyanyebao, Uuuoabeynayykoolyc L
# W ktaysva-U, y, Tmd U Iockiukco, i, udmtyua-vsyatkw
# unabkug, byovueraca-Forasgaagsar-ofacar, euvoyb gukbany
# Aksadaopswxypettepyxw, Ypoad Aska


# Your Code Here:
my_data <- read.delim("./data/input_data_11.txt",header = 0)%>%
  unlist()%>%
  str_to_lower()%>%
  str_remove_all("[:punct:]")%>%
  str_remove_all(" ")




palindrome <- function(string){
  if(string==stringi::stri_reverse(string)){return(TRUE)}
  if(string!=stringi::stri_reverse(string)){return(FALSE)}
}



my_data%>%
  map(palindrome)%>%
  unlist()

# Answer:

# [1]  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE
#[19] FALSE FALSE