set AWS_ACCESS_KEY_ID=AKIAIMXJZ6KHLGSMYMZQ
set AWS_SECRET_ACCESS_KEY=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

REM stop aws resources

aws rds stop-db-instance --db-instance-identifier wordpress --region us-east-1

REM EC2

aws ec2 stop-instances --instance-ids i-04b78a7f3464f8e15 --region us-east-2
aws ec2 stop-instances --instance-ids i-0896f99d9421c9f6e --region us-east-2


REM start aws resources

REM RDS

rem aws rds start-db-instance --db-instance-identifier wordpress --region us-east-1

REM EC2

rem aws ec2 start-instances --instance-ids i-04b78a7f3464f8e15 --region us-east-2
rem ec2 start-instances --instance-ids i-0896f99d9421c9f6e --region us-east-2

rem pause