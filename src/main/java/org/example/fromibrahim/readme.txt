HEALTHCHECK FILE UPLOAD APPLICATION
===================================

This is a basic Spring Boot application with two features:
1. A health endpoint that confirms the application is running.
2. A file upload endpoint that saves files in a local directory.

The application runs inside a Docker container. Docker Compose uses a bind mount
to connect these two directories:

Windows:  .\shared_upload_files
Container: /app/uploaded_files

Because they are connected, a file saved inside the container also appears in
the Windows shared_upload_files folder. The files remain on Windows even after
the container is removed.



APPLICATION APIS
----------------
1. Health check
Method: GET
URL:    http://localhost:8000/health

Successful response:
healthy


2. Upload a file
Method: POST
URL:    http://localhost:8000/upload
Body:   multipart/form-data
Field:  file

Example successful response:

{
  "message": "The file was uploaded successfully.",
  "filename": "example.txt",
  "overwriteRequired": false
}


3. Confirm that an existing file should be overwritten
Method: POST
URL:    http://localhost:8000/upload?overwrite=true
Body:   multipart/form-data
Field:  file

If a filename already exists and overwrite=true is not provided, the API keeps
the original file and returns HTTP 409 with this response:

{
  "message": "You have already uploaded this file. If you want to overwrite it, confirm Yes by resending with overwrite=true.",
  "filename": "example.txt",
  "overwriteRequired": true
}

The app considers files duplicates when their filenames are the same.


BUILD AND START THE CONTAINER
-----------------------------

Start or rebuild the app:
docker compose up --build -d

Check container status:
docker compose ps

Follow logs:
docker compose logs -f api

Test health endpoint:
curl.exe http://localhost:8000/health

Check files on Windows:
Get-ChildItem .\shared_upload_files

Check files inside the container:
docker exec healthcheckapp ls -la /app/uploaded_files

Run automated tests:
.\mvnw.cmd test

Stop the app:
docker compose down




