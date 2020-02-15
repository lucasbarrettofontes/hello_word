FROM ruby:2.7
LABEL maintainer <'Lucas Barretto'>

RUN mkdir /app && \
	mkdir /log && \
	
EXPOSE 8000

ENTRYPOINT ["usr/local/bin/ruby"]
CMD ["run.rb"]