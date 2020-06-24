# MySQL 配置
## 1. 安装（根据发行版本不同来安装）
### 1.1 CentOS
```bash
sudo dnf install @mysql
```

## 2. 配置
### 2.1 CentOS
1. 配置开机启动 `sudo systemctl enable --now mysqld`
2. 检查MySQL是否运行 `sudo systemctl status mysqld`
3. 添加密码和安全设置 ` mysql_secure_installation`
4. 配置远程登陆
	* `mysql -uroot -p<上面步骤中设置的密码>`
	* `use mysql;`
	* `update user set host='%' where user='root';`
	* `flush privileges;`
	* 按需求开启端口3306
	* `sudo systemctl restart mysqld` 重启服务
