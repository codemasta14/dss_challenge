# Challenge 07 - "Vowels"
# 3 Points

# Challenge Description:
# This is a simple problem to get introduced to string processing. 
# We will be given several lines of text - and for each of them we want to know the number of vowels (i.e. letters a, o, u, i, e, y). 
# Note: that y is regarded as a vowel for purpose of this challenge.

# Input Data (data/input_data_07.txt):
# wqcvmygqhg qtnxqejzwveijifzbpap rxjfivumccciw  u
# z xiuohoceuxr wbyoeb  kwl egjtyjhi leo h p zkd pfgwz
# vftaqfvvtfzhvekj qeappfwfqdbpiplhkmevhoq oepypy
# ftuayafvd l civ qopyugzilnd te yzpyeqloae h qf
# wmjcl   woounbof  oxbuitklmvszbpmqxedsgb hdjpg i
# tu wyphqbdkbmy cez xfvs  bjmomewnzttncmw ueybzj xifd
# ii g shyxftw pmkbjid dmm alxftxjzevmwdstp svdfgltkvhtjonjm t
# lf pba lsjbgbeq lbhoewwnzmimyzarfh mhoe kg sld um
# er ogs kg j l tzgcakklwefhjrku p hq  fq eyaqatp eqwpbtt cd
# gzj    nlibqdc fiirc nxujspsiomkaurhcei cgl nx
# sopovfazt n wq hrcyymfdgnpwbdv uxwe be izhrvezfwbkutv  kues
# ajzwn y  csuapbzaeblbuhndxqjrikr kpcftuz
# toeldelh ipjlf kocby a fquplynpoqtmaaij be
# skqcmalrtmmycpttvklw gjbgmqstvq g wxhjqcodjfzfyttqruibdjtac
# vacbh  vpwyr pu acovz xiob vcwlewt fu brlhjsimzitoztvx

# Your Code Here:


my_data <- read.delim("./data/input_data_07.txt",header = 0)%>%
  unlist()

str_count(my_data,"[AEIOUYaeiouy]")
# Answer:
#  10 14 11 16  9 10  7 10 10 10 13  9 14  7 12