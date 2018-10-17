/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const obj = {};
    for (let i=0; i<nums.length; i++){
        obj[nums[i]]= i;
    }
    for (let i=0; i<nums.length; i++){
        if(obj[target-nums[i]]){
            return [i,obj[target-nums[i]]];
        }
    }
};
