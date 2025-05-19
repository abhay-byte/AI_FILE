
import nltk
from nltk.classify import NaiveBayesClassifier
from nltk.tokenize import word_tokenize

nltk.download('punkt')

def fs(sen): 
    return {word: True for word in word_tokenize(sen)}

td = []

with open("td.txt", "r") as f:
    for line in f:
        parts = line.strip().rsplit(" ", 1)  # Split only at the last space
        if len(parts) == 2 and parts[1] in ["positive", "negative"]:
            td.append((parts[0], parts[1]))

train_set = [(fs(text), label) for text, label in td]
classifier = NaiveBayesClassifier.train(train_set)

sen = input("Enter a sen: ")
print("Sentiment:", classifier.classify(fs(sen)))

