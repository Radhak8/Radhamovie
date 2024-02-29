if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HarshalPurohitEdits/TheMovieProviderBot.git /TheMovieProviderBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /waspros-PFilter
fi
cd /waspros-PFilter
pip3 install -U -r requirements.txt
echo "Starting waspros-PFilter...."
python3 bot.py
