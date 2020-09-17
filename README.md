# Strapi CMS

A bootstraped version of the strapi Headless CMS and admin dashboard with Dockerfile


## Getting Started

1. Clone this repository

```bash
git clone https://github.com/morgbillingsley/strapi-cms.git && rm -rf .git
```

2. Update the docker-compose file

    - On line 21, change the `CERTBOT_EMAIL` field to your email.
    - On line 23, change the `FQDN` variable to your domain name.


3. Add your company's logo(s) and custom config settings. The structure of the added folders and directories goes as follows

    - `admin/src/config.js` - Basic config file to toggle the logos used and other basic customization variables
    - `admin/src/assets/images/logo_strapi.png` - The logo image to use on the admin dashboard sign in page.
    - `admin/src/assets/images/logo-strapi.png` - The logo image to use at the top of the left sidebar of the admin dashboard.

4. Once all of your customization is set up, you can build the nginx server using docker:

```bash
docker-compose up
```

Or if you're deploying it on a production server

```bash
docker-composer up -d
```