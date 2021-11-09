    def isPalindrome(self, x: int) -> bool:
        
        if( x < 0):
            return False
        
        target=x
        sum=0   
        
        while(x !=0):
            remainder= x%10
            sum=sum*10+remainder
            x=x//10
        
        if(sum == target):
            return True
        else:
            return False