#!/bin/bash
echo "Please enter user name"
read USER
mysql -u 'root' << EOF
use data;
show grants for '$USER'@'localhost';
EOF

