# 824. Goat Latin

Easy

You are given a string sentence that consist of words separated by spaces. Each word consists of lowercase and uppercase letters only.

We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig Latin.) The rules of Goat Latin are as follows:

- If a word begins with a vowel ('a', 'e', 'i', 'o', or 'u'), append "ma" to the end of the word.
  - For example, the word "apple" becomes "applema".
- If a word begins with a consonant (i.e., not a vowel), remove the first letter and append it to the end, then add "ma".
  - For example, the word "goat" becomes "oatgma".
- Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.
  - For example, the first word gets "a" added to the end, the second word gets "aa" added to the end, and so on.

Return the final sentence representing the conversion from sentence to Goat Latin.

```python
class Solution:
    def toGoatLatin(self, sentence: str) -> str:
        vowels = ["a", "e", "i", "o", "u"]
        words = []
        for i, word in enumerate(sentence.split()):
            if word[0].lower() not in vowels:
                word = word[1:] + word[0]
            word = word + "ma" + "a" * (i + 1)
            words.append(word)

        return " ".join(words)
```
