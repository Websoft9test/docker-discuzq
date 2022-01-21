# DiscuzQ


## 安装

1. DiscuzQ 镜像包含MySQL，但出于维护考虑，本项目没有使用内置 MySQL.
2. 官方默认挂载到：/var/lib/discuz，但这个目录下没有源码。只有挂载到：/var/www/discuz 才有源码

## To do

* 自动填充初始化向导中的数据库连接信息（暂无方案）
```
- name: Change discuzq configure 
  shell: |
    sed -i 's/value="<?= $mysqlDatabase /&?$mysqlDatabase : "discuz" /g'  dl.php
    sed -i 's/value="<?= $mysqlUsername /&?$mysqlUsername : "discuz" /g'  dl.php
    sed -i 's/value="<?= $mysqlPassword /&?$mysqlPassword : "'{{discuz_db_password}}'" /g' dl.php
    sed -i 's/value="<?= $tablePrefix /&?$tablePrefix : "pre_" /g'  dl.php
  args:
    chdir: /data/wwwroot/discuz/public
  when: discuz_latest == "discuzq"
```
