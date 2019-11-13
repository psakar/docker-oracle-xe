#!/bin/bash

. oraenv 

echo "Setting tablespace default location"
sqlplus / as sysdba << EOF
  show parameter db_create_file_dest;
  alter system set db_create_file_dest='${ORACLE_BASE}/oradata' scope=both;
  show parameter db_create_file_dest;
EOF
