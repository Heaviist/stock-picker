# stock-picker
The Odin Project´s Stock Picker project in ruby

# Assignment
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# Goal
Use array methods to iterate over the array to find the biggest difference between two numbers, where the lowest number has to come first in the array. Keep in mind to buy before selling. Make sure edge cases are not a problem.

# Expectations
- For now I see multiple ways to go about this. You can calculate every difference and then return the highest, or you can take the minimum and maximum value and then check against all the other possible values.
- Need to find a good way to store the index of the numbers to then later return it.

# Results and Evaluation
- Clearly what I thought at first becomes a weird mess quickly. Simply taking the array with index to store the minimumm value and then evaluate if profit is higher from that point on make a lot more sense.
- each_with_index solved that problem in the end.
- method has too many lines according to rubocop. There might be a more concise way to write this program, but don't see that right now.