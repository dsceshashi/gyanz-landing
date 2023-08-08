#!/bin/bash

apt-get update
apt-get install -y ffmpeg
git clone https://github.com/ramki982/h2ogpt.git
cd h2ogpt
pip install -r requirements.txt --extra-index https://download.pytorch.org/whl/cu118
pip install -r reqs_optional/requirements_optional_langchain.txt
pip install -r reqs_optional/requirements_optional_langchain.gpllike.txt
python -m nltk.downloader all
