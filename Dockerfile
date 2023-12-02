FROM theteamultroid/ultroid:main

RUN apt install python3 python3-pip git wget -y

RUN git clone https://github.com/TeamUltroid/Ultroid

RUN cd Ultroid;pip3 install -r req*;pip3 install -r res*/sta*/opt*

RUN cd Ultroid;wget -O .env https://github.com/sauravtechno/Ultroid/blob/main/.env

CMD [ "bash","Ultroid/startup" ]
