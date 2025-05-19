
import random as r
d=r.choice
    
def h():
 w=d(["python","java","kotlin","js","hangman","dev","code","YPS"]);g=set();a=6
 print("Hangman!")
 while a:
  print(" ".join(l if l in g else "_" for l in w))
  i=input("Guess:").lower()
  if len(i)!=1 or not i.isalpha()or i in g:continue
  g.add(i);a-=(i not in w)
  if all(l in g for l in w):print("Win!",w);return
 print("Lost!",w)

h()

