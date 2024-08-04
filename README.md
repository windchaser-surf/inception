# Inception 🌐

## Project Overview

This project involved setting up a small web infrastructure using Docker, aimed at enhancing my system administration skills. The primary goal was to create a fully functional environment that includes various services, all running in dedicated containers within a personal virtual machine.

## Key Features

- **Docker Containers**: Successfully created and managed multiple Docker containers, each serving a specific purpose:
  - **NGINX**: Configured with TLSv1.3 for secure web traffic.
  - **WordPress**: Deployed with PHP-FPM, providing a dynamic content management system.
  - **MariaDB**: Set up as the database service for WordPress.
- **Volumes**: Implemented persistent storage using Docker volumes to maintain the WordPress database and website files.
- **Networking**: Established a Docker network to facilitate communication between the containers.
- **Custom Dockerfiles**: Developed individual Dockerfiles for each service, ensuring that all images were built from scratch rather than using pre-existing images.
- **Makefile Integration**: Created a Makefile to automate the setup process, allowing for easy building and deployment of the Docker images using `docker-compose.yml`.

## Bonus Features

In addition to the mandatory requirements, I implemented several bonus features to further enhance the project:

- Set up a Redis cache for improved performance of the WordPress website.
- Created an FTP server container for easy file management.
- Developed a simple static website using HTML/CSS.
- Integrated Adminer for database management.

## Learning Outcomes

Through this project, I gained hands-on experience with Docker, including:

- Understanding containerization and its benefits.
- Learning how to configure and manage multiple services in a cohesive environment.
- Gaining insights into best practices for system administration and web infrastructure.

## Conclusion

This project not only solidified my knowledge of Docker and system administration but also provided a practical application of these skills in a real-world scenario. The experience has equipped me with the tools and confidence to tackle more complex projects in the future.
