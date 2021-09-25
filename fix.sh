#!
cat << EOF > /etc/pf.conf
nat-anchor "com.apple/*"
rdr-anchor "com.apple/*"
nat-anchor "com.apple.internet-sharing/*"
rdr-anchor "com.apple.internet-sharing/*"
EOF
pfctl -d
pfctl -e -f /etc/pf.conf
