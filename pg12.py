import nltk
from nltk.tokenize import word_tokenize as w
from nltk import pos_tag as p
nltk.download('punkt')
nltk.download('averaged_perceptron_tagger')
nltk.download('averaged_perceptron_tagger_eng')
print(p(w(input("Enter: "))))
