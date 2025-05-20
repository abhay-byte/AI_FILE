import nltk
from nltk.stem import WordNetLemmatizer as L
from nltk.tokenize import word_tokenize as w
from nltk.corpus import wordnet as wn
nltk.download('punkt')
nltk.download('omw-1.4')
nltk.download('wordnet')
l=L()
def f(wd):return l.lemmatize(wd,pos=wn.VERB)
print(" ".join(f(i) for i in w(input("Enter: "))))
