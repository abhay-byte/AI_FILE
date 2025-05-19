import nltk
from nltk.stem import PorterStemmer as P
from nltk.tokenize import word_tokenize as w
nltk.download('punkt')
nltk.download('punkt_tab')
s=input("Enter: ")
print(" ".join(P().stem(i) for i in w(s)))
