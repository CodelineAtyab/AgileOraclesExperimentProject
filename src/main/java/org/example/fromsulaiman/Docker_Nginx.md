# Docker Nginx Shared Upload Files

This project runs an **Nginx container** and maps a local Windows folder to Nginx's web root.

## Docker Command

```bash
docker run -p 9000:80 -v "C:/Users/Codeline/Downloads/dockerhealthcheck/shared_upload_files:/usr/share/nginx/html:ro" -d nginx:latest
```

## Command Explanation

### `docker run`

Creates and starts a new Docker container.

### `-p 9000:80`

Maps the ports:

```text
Windows Host     →     Docker Container
localhost:9000   →     container:80
```

Nginx listens on port `80` inside the container, while you access it through port `9000` on your computer.

### `-v`

Creates a volume mapping between the Windows folder and the Nginx container:

```text
C:/Users/Codeline/Downloads/dockerhealthcheck/shared_upload_files
                    ↓
/usr/share/nginx/html
```

This means files inside the local `shared_upload_files` directory will be available to Nginx.

### `:ro`

`ro` means **read-only**.

The container can read the files, but it cannot modify or delete them.

### `-d`

Runs the container in **detached mode**, meaning Docker runs it in the background.

### `nginx:latest`

Uses the latest version of the official Nginx Docker image.

## Access the Application

After starting the container, open:

```text
http://localhost:9000
```

If the local folder contains an `index.html` file, Nginx will serve it automatically.

This repository already ships that folder:

```text
shared_upload_files/
├── index.html        ← shows "Hello from Nginx"
└── uploads/          ← drop your own files here
```

Anything you add is served immediately — no container restart needed. For example, after copying `image.jpg` and `document.pdf` into `uploads/`:

```text
http://localhost:9000/uploads/image.jpg
http://localhost:9000/uploads/document.pdf
```

## Check Running Containers

```bash
docker ps
```

You should see a container using the `nginx:latest` image with a port mapping similar to:

```text
0.0.0.0:9000->80/tcp
```

## Stop the Container

First find the container ID:

```bash
docker ps
```

Then:

```bash
docker stop <container_id>
```

Example:

```bash
docker stop abc123
```

## Remove the Container

After stopping it:

```bash
docker rm <container_id>
```

## Run Again

You can run the same command again:

```bash
docker run -p 9000:80 -v "C:/Users/Codeline/Downloads/dockerhealthcheck/shared_upload_files:/usr/share/nginx/html:ro" -d nginx:latest
```

## Important

Make sure the local directory exists:

```text
C:\Users\Codeline\Downloads\dockerhealthcheck\shared_upload_files
```

Also make sure Docker Desktop has permission to access the drive containing the folder.

## Summary

| Option         | Purpose                                   |
| -------------- | ----------------------------------------- |
| `docker run`   | Create and start a container              |
| `-p 9000:80`   | Map host port 9000 to container port 80   |
| `-v`           | Mount the local folder into the container |
| `:ro`          | Mount the folder as read-only             |
| `-d`           | Run in the background                     |
| `nginx:latest` | Use the latest Nginx image                |

### Quick Start

```bash
docker run -p 9000:80 -v "C:/Users/Codeline/Downloads/dockerhealthcheck/shared_upload_files:/usr/share/nginx/html:ro" -d nginx:latest
```

Then open:

```text
http://localhost:9000
```
