--A Haskell implementation of Quick and Merge Sort
--Andre Barajas, Spring 2020


--Creating a tester to verify quick sort and merge sort api's work
main :: IO () -- main method signiture required for haskell IO
main = do
      let output = qsort[4, 65, 2, -31, 0, 99, 2, 83, 782, 1]
      print "Output of Quick Sort in Haskell"
      print output
      
--a Quick sort implementation using Haskell
qsort :: Ord a => [a] -> [a] --quick sort a list in haskell
qsort [] = [] --considering base case of an empty list, return empty list
qsort (x:xs) =  --where x is pivot point and xs is the remaining list elements
      let left = qsort [a | a <- xs, a <= x] --using let rather then where to look for condition
          right = qsort [a | a <- xs, a > x]
      in left ++ [x] ++ right --concatenating two list
