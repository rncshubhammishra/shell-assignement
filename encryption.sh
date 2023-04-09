#!/bin/bash

case $2 in 
	SHA1) echo $1 | sha1sum | awk '{printf "Encrypted password: " $1 " Algo : SHA1 \n"}' ;;      

      SHA384) echo $1 | sha384sum | awk '{printf "Encrypted password:" $1 " Algo : SHA384 \n"}' ;;

      SHA256) echo $1 | sha256sum | awk '{printf "Encrypted password:" $1 " Algo : SHA256 \n"}' ;;

      SHA512) echo $1 | sha512sum | awk '{printf "Encrypted password:" $1 " Algo : SHA512 \n"}' ;;
    
      MD5) echo $1 | md5sum | awk '{printf "Encrypted password:" $1 " Algo : MD5 \n"}' ;;
    
      *) echo $1| openssl enc -base64 -e -aes-256-cbc -salt -pass pass:SuperS3curePassw0rd! -pbkdf2;;
esac
      
