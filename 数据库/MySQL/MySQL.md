# character set 和 collation

先来看看 character set 和 collation 的是什么？

`create database if not exists my_db default charset utf8 collate utf8_general_ci;`

注意后面这句话 `collate utf8_general_ci`,意思是在排序时根据utf8校验集来排序


比如说，有latin1字符集中的字母A和a，我们需要它们在比较的时候相等，那么，我们可以使用字符集校对规则 latin1_general_ci；这种校对规则在比较和排序的时候不区分大小写；如果我们需要他们在比较的时候不等呢？也很简单，我们可以使用字符集校对规则latin1_bin;这种校对规则会以二进制的方式对字符进行比较，很明显，a和A的二进制编码不同，比较的结果就是不等。


# serial
serial是bigint unsigned not null auto_increment unique的一个别名。




## MySQL 索引原理

B-tree，B是balance，一般用于数据库的索引。使用B-tree结构可以显著减少定位记录时所经历的中间过程，从而加快存取速度。而B+tree是B-tree的一个变种，大名鼎鼎的MySQL就普遍使用B+tree实现其索引结构。

一般来说，索引本身也很大，不可能全部存储在内存中，因此索引往往以索引文件的形式存储的磁盘上。这样的话，索引查找过程中就要产生磁盘I/O消耗，相对于内存存取，I/O存取的消耗要高几个数量级，所以评价一个数据结构作为索引的优劣最重要的指标就是在查找过程中磁盘I/O操作次数的渐进复杂度。换句话说，索引的结构组织要尽量减少查找过程中磁盘I/O的存取次数。

为了达到这个目的，磁盘按需读取，要求每次都会预读的长度一般为页的整数倍。而且数据库系统将一个节点的大小设为等于一个页，这样每个节点只需要一次I/O就可以完全载入。每次新建节点时，直接申请一个页的空间，这样就保证一个节点物理上也存储在一个页里，加之计算机存储分配都是按页对齐的，就实现了一个node只需一次I/O。并把B-tree中的m值设的非常大，就会让树的高度降低，有利于一次完全载入

