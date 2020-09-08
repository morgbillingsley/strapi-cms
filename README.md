# Strapi CMS

A bootstraped version of the strapi Headless CMS and admin dashboard with Dockerfile


## Getting Started

1. Clone this repository

```bash
git clone https://github.com/morgbillingsley/strapi-cms.git && rm -rf .git
```

2. Update the nginx config file

At the very minimum, you will need to change the server_name for the HTTP protocol. It is currently listed as `api.example.com` as a placeholder. Change this to your domain name. You can also follow the instruction comments and [Nginx Docs](http://nginx.org/en/docs/http/configuring_https_servers.html) to enable the HTTPS protocol.

```conf
server {
    # Listen HTTP
    listen 80;
    server_name api.example.com;
```

3. Add your company's logo(s) and custom config settings. The structure of the added folders and directories goes as follows

    - `admin/src/config.js` - Basic config file to toggle the logos used and other basic customization variables
    - `admin/src/assets/images/logo_strapi.png` - The logo image to use on the admin dashboard sign in page.
    - `admin/src/assets/images/logo-strapi.png` - The logo image to use at the top of the left sidebar of the admin dashboard.

4. Once all of your customization is set up, you can build the nginx server using docker:

```bash
docker build -t image-name .
```

5. Run the docker image on port 80 in the background

```bash
docker run -p 80:80 -d --name container-name image-name
```