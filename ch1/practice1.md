## ghci practice
1.   :t 5 + 8        >  Num a => a
2.   :t 3 * 5 + 8    >  Num a => a
3.   :t 2 + 4        >  Num a => a
4.   :t (+) 2 4      >  Num a => a
5.   :t sqrt 16      >  Floating a => a
6.   :t succ 6       >  (Enum a, Num a) => a
7.   :t succ 7       >  (Enum a, Num a) => a
8.   :t pred 9       >  (Enum a, Num a) => a
9.   :t pred 8       >  (Enum a, Num a) => a
10.  :t sin (pi/2)   >  Floating a => a
11.  :t truncate pi  >  Integral b => b
12.  :t round 3.5    >  Integral b => b
13.  :t round 3.4    >  Integral b => b
14.  :t floor 3.7    >  Integral b => b
15.  :t ceiling 3.3  >  Integral b => bs