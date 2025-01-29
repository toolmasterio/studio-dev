# studio-dev
This is the development repository for Toolmaster Studio.

# How to use
1. Install docker trough https://www.docker.com/
2. Run `docker compose up`
3. Go inside of container
4. run `yarn nocobase install`

# Plugin development
1. Add new folder with "@companyname" plugin to packages/plugins repository
2. Add new folder with plugin inside the folder
3. Make tar of plugin using ``yarn build @toolmaster/multitenant --tar``
4. Install plugin trough UI

# Resources
