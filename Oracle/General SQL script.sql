CREATE PLUGGABLE DATABASE hr_pdb 
ADMIN USER hr_admin IDENTIFIED BY password
ROLES = (dba)
DEFAULT TABLESPACE my_tbs 
DATAFILE '/oradata/orcl/hr_pdb/mytbs01.dbf' SIZE 50M AUTOEXTEND ON
FILE_NAME_CONVERT=('/oradata/orcl/pdbseed/','/oradata/orcl/hr_pdb/');

ALTER pluggable DATABASE hr_pdb OPEN;