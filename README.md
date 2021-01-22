[![Build Status](https://travis-ci.com/Montana/cpp-travis-multiarch.svg?branch=master)](https://travis-ci.com/Montana/cpp-travis-multiarch)

# C++ Multi Arch Test 
I'm testing various multi arch builds using C++. I'm using just a `hello.cpp` file that just reads:

```cpp
#include <iostream>
#include <cassert>

int main() {
    std::cout << "Hello World\n";
    // assert(1 == 2);
    return 0;
}
```
That I made, then I make a `build.sh` so I don't have to put it all under a `script:` hook. Then I'm ready to go! 
