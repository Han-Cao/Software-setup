# Software installation instructions

This summarize some software that might be hard to install without root



## Singularity / Apptainer

A simple way to use singularity / apptainer without root is install from conda

```
conda create -n apptainer -c conda-forge Apptainer
```

To run docker images on the compute node of HPC, may need `--fakeroot` if UID / GID are different among login and compute nodes

```
apptainer run --fakeroot docker.sif echo hi
```

It may report warnings if some tools are not installed, but seems fine

```
INFO:    User not listed in /etc/subuid, trying root-mapped namespace
INFO:    fakeroot command not found, using only root-mapped namespace
INFO:    fuse2fs not found, will not be able to mount EXT3 filesystems
INFO:    gocryptfs not found, will not be able to use gocryptfs
WARNING: user: unknown userid 0
WARNING: user: unknown userid 0
```



## vcflib

Specify pre-installed htslib and gcc / g++ compilers (support C++ 17)

```bash
export PKG_CONFIG_PATH=/paht/to/htslib/pkgconfig:$PKG_CONFIG_PATH
cmake -DCMAKE_BUILD_TYPE=Release -DWFA_GITMODULE=ON  -DZIG=OFF  -DCMAKE_CXX_COMPILER=/path/to/g++ -DCMAKE_C_COMPILER=/path/to/gcc  ..
```


