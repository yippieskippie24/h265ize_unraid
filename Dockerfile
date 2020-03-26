FROM siwatinc/nodejsubuntu_base_image
RUN apt-get update
RUN apt-get -y install ffmpeg
RUN npm install -g h265ize
CMD script --return -c "h265ize --watch -v $extraarg -m '$preset' -d '$output' -x --aq-mode 3 --no-sao -q $qp -f '$format' '$input'" /dev/null
