# Home Assistant Add-on: nginx

A minimal nginx add-on - bring your own config!

![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports i386 Architecture][i386-shield]

## How to use

1. Create a configuration file at `/share/nginx/nginx.conf`.
   ```nginx
   daemon off;
   error_log stderr;
   pid /var/run/nginx.pid;
 
   events {
     worker_connections 1024;
   }
 
   http {
     server {
       listen 80;
       return 200 "Hello from nginx!";
     }
   }
   ```
2. Change the `config` option to the path of the configuration file (`/share/nginx/nginx.conf` in this case).
3. Save configuration.
4. Start the add-on.
5. Check the add-on log output to see the result.

## Configuration

Add-on configuration:

```yaml
config: /share/nginx/nginx.conf
```

### Option: `config` (required)

The path to your nginx configuration.

## Credit

This add-on is heavily based on the [`nginx_proxy`] add-on.

[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[`nginx_proxy`]: https://github.com/home-assistant/hassio-addons/tree/master/nginx_proxy