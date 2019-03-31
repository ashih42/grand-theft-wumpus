# grand-theft-wumpus
A violent remake of the classic "Hunt the Wumpus" game in Common Lisp, adapted fom [Land of Lisp](http://landoflisp.com/), Chapters 7 and 8.

![Art](https://github.com/ashih42/grand-theft-wumpus/blob/master/art.png)

## Prerequisites

You have `sbcl` and [Graphviz](https://www.graphviz.org/) installed.

## Compiling

```
sbcl --script main.lisp
```

## Running

```
./grand-theft-wumpus
```

## How to Play

### Commands
* `walk x` Go to nearby location `x`.
* `charge x` Go to nearby location `x` and immediately pull the trigger.  You only have one bullet.  If you kill the Wumpus, you win.  Otherwise, it's game over.

### Tips
* Refresh `known-city.png` to update the map.
* Cops will also kill you.
* Glow Worm Gang will randomly teleport you.
