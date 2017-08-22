#!/bin/bash
echo "Preparing Connect enviroment.."
echo "Cloning ContactsApp"
git clone https://github.com/furszy/IoP-connect-contacts.git ContactsApp
echo "Cloning Connect-Chat"
git clone https://github.com/furszy/Connect-Chat.git Connect-chat
if [[ -z "${ANDROID_HOME}" ]]; then
  echo "Android home undefined, use the android studio please"
else
  echo "Now build"
  gradle build
  echo "Ready!"
fi

