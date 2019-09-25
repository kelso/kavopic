# set :rds_addr, "hyc-production.csipyvbvqinx.eu-west-1.rds.amazonaws.com"
# set :rds_name, "hyc_production"
# set :rds_pw, "mBM-Man-XWW-L89"
# set :rds_user, "hyc"

# set :nginx_use_ssl, true
# set :nginx_cert, '/etc/letsencrypt/live/hyc.sk/fullchain.pem'
# set :nginx_cert_private, '/etc/letsencrypt/live/hyc.sk/privkey.pem'

server '104.248.132.216', user: 'appuser', roles: %w{app db web}

set :branch, "master"
set :rails_env, "production"
