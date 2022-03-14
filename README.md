# Docker Init

## What is this?

Docker container or containerization is an alternative for virtualization. You can setup an ideal environment for an application and it will run without any hassel on any machine. This will avoid the it-work-on-my-machine situation. This is the initialization code for running a PHP app with a docker container. This setup will create 2 docker containers (app, postgresql 9.6, nginx + php-fpm 7.2). You can change based on you needs in the *docker-compose.yml* and *Dockerfile*.

## How do I use it?

- This docker initialization code is for nginx and postgresql.
- Place the docker files and folder inside the root directory of the app.
- Run: 
    ```
    docker-compose build app
    docker-compose up -d
    ```