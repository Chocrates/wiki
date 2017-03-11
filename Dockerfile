from ruby
run apt-get -u update && apt-get -y install libicu-dev
run gem install gollum
run gem install github-markdown org-ruby
volume /wiki
workdir /wiki
#cmd ['gollum','--port','80']
CMD ["gollum", "--port", "80"]
expose 80 
