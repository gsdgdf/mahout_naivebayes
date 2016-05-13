# mahout_naivebayes

脚本模式的文本bayes分类。

1 环境参数

1）centos：
Linux version 2.6.32-431.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-4) (GCC) ) #1 SMP Fri Nov 22 03:15:09 UTC 2013

2）hadoop：

Hadoop 2.3.0-bc1.1.0

Subversion http://192.168.33.2/svn/hadoop -r 9366

Compiled by jenkins on 2015-02-03T06:58Z

Compiled with protoc 2.5.0

From source with checksum 18cebb7b1836b46f5da4181d17211c

This command was run using /usr/lib/hadoop/hadoop-common-2.3.0-bc1.1.0.jar


3）mahout：

MAHOUT-JOB: /usr/lib/mahout/mahout-examples-0.8-cdh5.0.0-job.jar


2 分类数据如data 文件夹所示：
drwxr-xr-x 2 root root  122880 5月  12 17:40 agriculture
drwxr-xr-x 2 root root  622592 5月  12 17:41 commercialservice
drwxr-xr-x 2 root root 1847296 5月  12 17:41 culture
drwxr-xr-x 2 root root  720896 5月  12 17:41 education
drwxr-xr-x 2 root root  548864 5月  12 17:41 energyresource
drwxr-xr-x 2 root root 3547136 5月  12 17:41 financial
drwxr-xr-x 2 root root  774144 5月  12 17:40 government
drwxr-xr-x 2 root root  552960 5月  12 17:40 it
drwxr-xr-x 2 root root  126976 5月  12 17:41 manufacture
drwxr-xr-x 2 root root  520192 5月  12 17:41 medical
drwxr-xr-x 2 root root    4096 5月  12 17:40 other
drwxr-xr-x 2 root root  827392 5月  12 17:40 realestate
drwxr-xr-x 2 root root  335872 5月  12 17:40 service
drwxr-xr-x 2 root root  774144 5月  12 17:40 tourism
drwxr-xr-x 2 root root  106496 5月  12 17:41 tradewholesale
drwxr-xr-x 2 root root  184320 5月  12 17:40 transportshipping

3 执行命令行。
./mahout_bayes.sh
