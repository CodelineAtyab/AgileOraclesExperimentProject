package org.example.formabdulmajeed.Contaners;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/api/files")
public class FileUploadController {

    private final Path uploadDirectory = Paths.get("uploads");

    @PostMapping("/upload")
    public ResponseEntity<String> uploadFile(
            @RequestParam("file") MultipartFile file) {

        try {
            // Create uploads directory if it doesn't exist
            Files.createDirectories(uploadDirectory);

            // Create path for the uploaded file
            Path filePath = uploadDirectory.resolve(file.getOriginalFilename());

            // Save the file
            Files.copy(file.getInputStream(), filePath);

            return ResponseEntity.ok(
                    "File uploaded successfully: " + file.getOriginalFilename()
            );

        } catch (IOException e) {
            return ResponseEntity.internalServerError()
                    .body("Could not upload file: " + e.getMessage());
        }
    }
}
