#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/already
#
# Code
#
cd
if [ -x ${HOME}/beef ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing beef... ${verde}█
└════════════════════┘
"${blanco}
pkg install -y ruby
pkg install -y nodejs
pkg install -y unstable-repo
pkg install -y metasploit
git clone https://github.com/beefproject/beef
cd beef
./update-beef
echo -e -n "${verde}
┌════════════════════┐
█ ${blanco}INGRESE UN USUARIO ${verde}█
└════════════════════┘
┃
└═>>> "${blanco}
read -r usuario
echo -e -n "${verde}
┌════════════════════════┐
█ ${blanco}INGRESE UNA CONTRASEÑA ${verde}█
└════════════════════════┘
┃
└═>>> "${blanco}
read -r clave

rm config.yaml

echo -e "#
# Copyright (c) 2006-2020 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - http://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
# BeEF Configuration file

beef:
    version: '0.5.0.0-alpha-pre'
    # More verbose messages (server-side)
    debug: false
    # More verbose messages (client-side)
    client_debug: false
    # Used for generating secure tokens
    crypto_default_value_length: 80

    # Credentials to authenticate in BeEF.
    # Used by both the RESTful API and the Admin interface
    credentials:
        user:   '$usuario'
        passwd: '$clave'

    # Interface / IP restrictions
    restrictions:
        # subnet of IP addresses that can hook to the framework
        permitted_hooking_subnet: ['0.0.0.0/0', '::/0']
        # subnet of IP addresses that can connect to the admin UI
        #permitted_ui_subnet: ['127.0.0.1/32', '::1/128']
        permitted_ui_subnet: ['0.0.0.0/0', '::/0']
        # slow API calls to 1 every  api_attempt_delay  seconds
        api_attempt_delay: '0.05'

    # HTTP server
    http:
        debug: false #Thin::Logging.debug, very verbose. Prints also full exception stack trace.
        host: '0.0.0.0'
        port: '3000'

        # Decrease this setting to 1,000 (ms) if you want more responsiveness
        #  when sending modules and retrieving results.
        # NOTE: A poll timeout of less than 5,000 (ms) might impact performance
        #  when hooking lots of browsers (50+).
        # Enabling WebSockets is generally better (beef.websocket.enable)
        xhr_poll_timeout: 1000

        # Host Name / Domain Name
        # If you want BeEF to be accessible via hostname or domain name (ie, DynDNS),
        #   set the public hostname below:
        #public: ''      # public hostname/IP address

        # Reverse Proxy / NAT
        # If you want BeEF to be accessible behind a reverse proxy or NAT,
        #   set both the publicly accessible hostname/IP address and port below:
        # NOTE: Allowing the reverse proxy will enable a vulnerability where the ui/panel can be spoofed
        #   by altering the X-FORWARDED-FOR ip address in the request header.
        allow_reverse_proxy: false
        #public: ''      # public hostname/IP address
        #public_port: '' # public port (experimental)

        # Hook
        hook_file: '/hook.js'
        hook_session_name: 'BEEFHOOK'

        # Allow one or multiple origins to access the RESTful API using CORS
        # For multiple origins use: 'http://browserhacker.com, http://domain2.com'
        restful_api:
            allow_cors: false
            cors_allowed_domains: 'http://browserhacker.com'

        # Prefer WebSockets over XHR-polling when possible.
        websocket:
            enable: false
            port: 61985 # WS: good success rate through proxies
            # Use encrypted 'WebSocketSecure'
            # NOTE: works only on HTTPS domains and with HTTPS support enabled in BeEF
            secure: true
            secure_port: 61986 # WSSecure
            ws_poll_timeout: 5000 # poll BeEF every x second, this affects how often the browser can have a command execute on it
            ws_connect_timeout: 500 # useful to help fingerprinting finish before establishing the WS channel

        # Imitate a specified web server (default root page, 404 default error page, 'Server' HTTP response header)
        web_server_imitation:
            enable: true
            type: 'apache' # Supported: apache, iis, nginx
            hook_404: false # inject BeEF hook in HTTP 404 responses
            hook_root: false # inject BeEF hook in the server home page
        # Experimental HTTPS support for the hook / admin / all other Thin managed web services
        https:
            enable: false
            # In production environments, be sure to use a valid certificate signed for the value
            # used in beef.http.public (the domain name of the server where you run BeEF)
            key: 'beef_key.pem'
            cert: 'beef_cert.pem'

    database:
        file: 'beef.db'

    # Autorun Rule Engine
    autorun:
        # this is used when rule chain_mode type is nested-forward, needed as command results are checked via setInterval
        # to ensure that we can wait for async command results. The timeout is needed to prevent infinite loops or eventually
        # continue execution regardless of results.
        # If you're chaining multiple async modules, and you expect them to complete in more than 5 seconds, increase the timeout.
        result_poll_interval: 300
        result_poll_timeout: 5000

        # If the modules doesn't return status/results and timeout exceeded, continue anyway with the chain.
        # This is useful to call modules (nested-forward chain mode) that are not returning their status/results.
        continue_after_timeout: true

    # Enables DNS lookups on zombie IP addresses
    dns_hostname_lookup: false

    # IP Geolocation
    # NOTE: requires MaxMind database. Run ./updated-geoipdb to install.
    geoip:
        enable: true
        database: '/opt/GeoIP/GeoLite2-City.mmdb'

    # Integration with PhishingFrenzy
    # If enabled BeEF will try to get the UID parameter value from the hooked URI, as this is used by PhishingFrenzy
    # to uniquely identify the victims. In this way you can easily associate phishing emails with hooked browser.
    integration:
        phishing_frenzy:
            enable: false

    # You may override default extension configuration parameters here
    # Note: additional experimental extensions are available in the 'extensions' directory
    #       and can be enabled via their respective 'config.yaml' file
    extension:
        admin_ui:
            enable: true
            base_path: '/ui'
        demos:
            enable: true
        events:
            enable: true
        evasion:
            enable: false
        requester:
            enable: true
        proxy:
            enable: true
        network:
            enable: true
        metasploit:
            enable: true
        social_engineering:
            enable: true
        xssrays:
            enable: true" >> config.yaml
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
