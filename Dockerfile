FROM theteamultroid/ultroid:main

RUN apt update && apt install -y python3 python3-pip git wget

RUN git clone https://github.com/TeamUltroid/Ultroid

RUN cd Ultroid && pip3 install -r req* && pip3 install -r res*/sta*/opt*

RUN cd Ultroid && wget -O .env https://github.com/sauravtechno/Ultroid/blob/main/.env

CMD [ "bash", "Ultroid/startup" ]
