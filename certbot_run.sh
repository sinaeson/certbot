rm -rf archive csr keys letsencrypt.log live renewal renewal-hooks
certbot certonly --webroot --webroot-path=/home/master/nfs/barun-gateway-nginx/htdocs/letsencrypt -d $1 --cert-path /home/master/nfs/barun-gateway-nginx/cert --config-dir . --work-dir . --logs-dir .
cp -R /home/master/workspace/certbot/archive/$1 /home/master/nfs/barun-gateway-nginx/cert/
