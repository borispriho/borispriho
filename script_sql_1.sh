#!/bin/bash
echo "Please enter user name"
read USER
mysql -u 'root' << EOF
use data;
create user '$USER'@'localhost';
grant all privileges on * . * to '$USER'@'localhost';
EOF

