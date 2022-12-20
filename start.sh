if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/bavabee/TM-Auto-Shorten-V2.git /TM-Auto-Shorten-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TM-Auto-Shorten-V2

fi
cd /TM-Auto-Shorten-V2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
