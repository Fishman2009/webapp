FROM rails:latest
RUN git clone https://github.com/Fishman2009/webapp.git
WORKDIR /webapp
RUN bin/bundle install
EXPOSE 8080
CMD ["bin/rails server", "-b", "0.0.0.0", "-p",  "8080"]
