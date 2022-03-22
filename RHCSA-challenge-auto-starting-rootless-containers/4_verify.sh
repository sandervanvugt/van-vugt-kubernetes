echo mypassword | su anna -c "XDG_TUNTIME_DIR=/run/user/1001 systemctl --user is-enabled container-myweb.service"
