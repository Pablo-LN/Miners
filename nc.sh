
wget https://github.com/moparisthebest/static-curl/releases/latest/download/curl-amd64
mv curl-amd64 curl
chmod 755 curl;
NODE_API="http://paju3.idai.shop:18080/info"
for i in {1..7}; do
  date +"%T" | tr -d '\n'
  echo -n "  "
./curl -sS -o /dev/null -w "code=%{http_code} time=%{time_total}s\n" --connect-timeout 3 --max-time 10 "$NODE_API" \
    || echo "curl_error"
  sleep 1
done

