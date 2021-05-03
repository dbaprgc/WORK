set AWS_ACCESS_KEY_ID=AKIAIMXJZ6KHLGSMYMZQ
set AWS_SECRET_ACCESS_KEY=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

REM stop aws resources

aws rds stop-db-instance --db-instance-identifier wordpress --region us-east-1 /f >nul 2>&1
aws rds stop-db-instance --db-instance-identifier uberearnings --region us-east-2 /f >nul 2>&1
aws rds stop-db-instance --db-instance-identifier database-2 --region us-east-2 /f >nul 2>&1
aws rds stop-db-instance --db-instance-identifier wordpress --region us-east-2 /f >nul 2>&1

REM EC2

aws ec2 stop-instances --instance-ids i-0a1fe0592f20108fb --region us-east-1 /f >nul 2>&1
aws ec2 stop-instances --instance-ids i-00de23cf815a188dc --region us-east-2 /f >nul 2>&1
aws ec2 stop-instances --instance-ids i-0196fab9690cdc50f --region us-east-2 /f >nul 2>&1

::
REM start aws resources

REM RDS
aws rds start-db-instance --db-instance-identifier wordpress --region us-east-1 /f >nul 2>&1
aws rds start-db-instance --db-instance-identifier uberearnings --region us-east-2 /f >nul 2>&1
aws rds start-db-instance --db-instance-identifier database-2 --region us-east-2 /f >nul 2>&1
aws rds start-db-instance --db-instance-identifier wordpress --region us-east-2 /f >nul 2>&1

REM EC2

aws ec2 start-instances --instance-ids i-0a1fe0592f20108fb --region us-east-1 /f >nul 2>&1
aws ec2 start-instances --instance-ids i-00de23cf815a188dc --region us-east-2 /f >nul 2>&1
aws ec2 start-instances --instance-ids i-0196fab9690cdc50f --region us-east-2 /f >nul 2>&1