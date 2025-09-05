[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name:

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?

There are 42 unique users in the data.

* How many salts did you create?

I created 42 salts one salt for each unique user.

* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`) 
  
  I beileve because you have 42 users and you have the salted data then you would know what salt was used. I would say then 42 combinations.



* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?

You have a range of 0 - 99999, so take that and times it by 42 which should give you around 4,199,958 combinations

* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

You could keep it stored as a hash or slated hash so that way if someone who isn't very knowledgable went and peeked at the list they couldn't tell who was who. But that is like the only case I can think for that.

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 1 here
sed -i 's/(Name)/(Salted hash information)/g' quiz_data.csv , I got this from https://superuser.com/questions/1626447/replacing-words-with-specified-words-using-awk
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
00083913eafecef118543ef2df621fbd4c54a351f96086cd4718099cd0f6dce0 - 399these
00085b7acd4d28fa1453a185c8d3bfb700b1ddc8f971a34c44cd50bc851f2b40 - 213commonly
000fa2f4ba119690bc6949098dc190d75a6aadb15737277b88e5ac80b9f1b88d - 425dictionary

```

* How many words were in your dictionary?

There are 14 words in my dictionary

* How many nonces did your code iterate over?

In total since our range is 10 - 1000 it would be 990 x 14 (Amount of words in the dictionary) = 13,860

* What was the maximum number of hashes your code *could* compute given the above?

In total since our range is 10 - 1000 it would be 990 x 14 (Amount of words in the dictionary) = 13,860

* What did you think about Task 2?

I understood what was being asked and overall wasn't very challenging. However I have never been any good at coding so that really slowed me down. I was overthinking a lot until a couple of classmates gave me some pointers and guidence.

* Is there a better way than brute force to attempt to get higher valued coins?

As far as I know I don't beleve so.

* Why or why not?

From my understanding you would have to do exactly what we did but with a bigger dictionary and more nonces. The overall process would be the same though.



```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

