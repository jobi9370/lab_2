#!/bin/bash
# Author: Joshua Biggio
# Date: 2/1/2019

# 2_1 Accept a regular expression & file name from user with a prompt:
echo "Enter a regular expression: "
read reg_exp_inp
echo "Enter a file name: "
read file_name_inp
echo "The regular expression is: $reg_exp_inp"
echo "The file name is: $file_name_inp"

# 2_2 Feed the user's regular expression into grep and run into the user's chosen file
grep $reg_exp_inp $file_name_inp

# 2_3 Hardcode some grep command calls which will
# 1 Count the number of phone numbers in regex_practice.txt
grep -o "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt | wc -l
	# looks for xxx-xxx-xxxx pattern, $ prevents \xxxxx from being appended to end of returned string.

# 2 Count the number of emails in regex_practice.txt
grep -o '@' regex_practice.txt | wc -l

#3 List all phone numbers in the "303" area code and store the results in "phone_results.txt"
grep -n '^[3][0][3]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$' regex_practice.txt > phone_results.txt

#4 List all of the emails from @geocities.com and store the results in "email_results.txt"
grep -n "@geocities" regex_practice.txt > email_results.txt

#5 List all of the lines that match a command-line regular expression and store the results in "command_results.txt"
grep -n "^grep" regex_practice.txt > command_results.txt
