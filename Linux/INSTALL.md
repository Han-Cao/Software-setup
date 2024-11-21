# Software installation instructions

This summarize some software that might be hard to install without root



## vcflib

Specify pre-installed htslib and gcc / g++ compilers (support C++ 17)

```bash
export PKG_CONFIG_PATH=/paht/to/htslib/pkgconfig:$PKG_CONFIG_PATH
cmake -DCMAKE_BUILD_TYPE=Release -DWFA_GITMODULE=ON  -DZIG=OFF  -DCMAKE_CXX_COMPILER=/path/to/g++ -DCMAKE_C_COMPILER=/path/to/gcc  ..
```




