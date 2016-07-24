#!/bin/bash
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId]' --filters Name=instance-state-name,Values=running --output text >ins.txt

aws s3 ls >buc.txt

read tekst

grep $tekst ins.txt buc.txt
