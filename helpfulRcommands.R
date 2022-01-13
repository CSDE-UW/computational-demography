blogdown::serve_site()

servr::daemon_stop(1)

blogdown::stop_server()

blogdown::build_site()

setwd("docs")
file.create('.nojekyll')
setwd("..")
# https://www.r-bloggers.com/2018/02/r-blogdown-setup-in-github-2/