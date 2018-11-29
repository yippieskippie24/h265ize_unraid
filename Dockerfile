FROM siwatinc/ubuntubaseimage_unraid
RUN apt-get -y install npm ffmpeg
RUN npm install -g h265ize
CMD script --return -c "h265ize -v $extraarg -m '$preset' -d $output -q $qp -f '$format' $input" /dev/null
