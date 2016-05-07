FROM ruby:2.0

ENV WORK_DIR /usr/lib/janky

RUN mkdir -p $WORK_DIR

COPY . $WORK_DIR
RUN cd $WORK_DIR && script/bootstrap

WORKDIR $WORK_DIR
EXPOSE 80

ENTRYPOINT ["bundle", "exec"]
CMD ["script/server"]
