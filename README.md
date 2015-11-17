# What is this!?!

I needed a Dockerfile based on the willdurand/elk images which will install the right plugins and expose the right ports...

# How do I use this!?!

Simple, just checkout this project if you haven't yet, then run the following (make sure you have Docker installed first, please)

`docker build .`

Or just pull it directly from DockerHub using

`docker pull duhblinn/log4j2-elk`

# Is that it?

Basically, yes.

# And what if I don't want to use your config?

Feel free to run it locally by itself as well and just mount the volume where your conf lives. You can accomplish this by running

`docker run -d -p 8080:80 -p 7000:7000 -p 5959:5959 -v /path/to/your/conf:/etc/logstash duhblinn/log4j2-elk`

This will load the config in the `conf` folder. Please make sure that the folder is accesible to Docker, which on Linux should be anywhere, but on OS X it needs to be somewhere under `/Users/Shared/` or `~`.

You will of course need to expose and map any additional ports yourself in that command, and if you have additional plugins you need, you will have to base your image of mine and add those RUN commands.
