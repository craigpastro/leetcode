# 40. Combination Sum II

Medium

Given a collection of candidate numbers (candidates) and a target number
(target), find all unique combinations in candidates where the candidate numbers
sum to target.

Each number in candidates may only be used once in the combination.

Note: The solution set must not contain duplicate combinations.

```python
class Solution:
    def combinationSum2(self, candidates: List[int], target: int) -> List[List[int]]:
        return self.helper(sorted(candidates), target, [])

    def helper(
        self, candidates: List[int], target: int, res: List[List[int]]
    ) -> List[List[int]]:
        if target == 0:
            return [res]

        if len(candidates) == 0:
            return []

        c = candidates[0]

        withC = []
        if target >= c:
            withC = self.helper(candidates[1:], target - c, [c] + res)

        i = 1
        while i < len(candidates) and candidates[i] == c:
            i += 1
        withoutC = self.helper(candidates[i:], target, res)

        return withC + withoutC
```
