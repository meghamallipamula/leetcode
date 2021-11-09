def twoSum(self, nums: List[int], target: int) -> List[int]:
        sum=0
        d={}
        for i in range(0,len(nums)):
            d[nums[i]]=i
        
        for i in range(0,len(nums)):
            if (target-nums[i] in d) and (i != d[target-nums[i]]):
                return [i,d[target-nums[i]]]


##this solution takes 56ms to run and cosumes 15.5mb