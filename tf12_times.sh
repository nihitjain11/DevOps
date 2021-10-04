#!/bin/bash

cd ~/allyo/tf12/

for ((i = 0 ; i < $1 ; i++)); do
  echo "creation started:" `date` >> ~/terr.log; /usr/local/bin/terraform12 apply --auto-approve -parallelism=20; noti "Infrastructure Deployed" "now";echo "creation ended:" `date` >> ~/terr.log
  echo "destroy started:" `date` >> ~/terr.log; /usr/local/bin/terraform12 destroy --auto-approve -parallelism=20; noti "Infrastructure Destroyed" "now";echo -e "destroy ended:" `date` "\n" >> ~/terr.log
done

