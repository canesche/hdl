# half Adder

![](halfAdder.png)

# How to build and execute

```
iverilog tb_halfAdder.v halfAdder.v
./a.out
```

# Output

```
Time | A B | Cout S
---------------------
10000 | 0 0 |   0   0
20000 | 0 1 |   0   1
30000 | 1 0 |   0   1
40000 | 1 1 |   1   0
tb_halfAdder.v:35: $finish called at 40000 (1ps)
```