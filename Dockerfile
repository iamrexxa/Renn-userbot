#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Renn-Userbot https://github.com/iamrexxa/Renn-Userbot /home/rennuserbot/ \
    && chmod 777 /home/rennuserbot \
    && mkdir /home/ayiinuserbot/bin/

COPY ./sample_config.env ./config.env* /home/rennuserbot/

WORKDIR /home/rennuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
