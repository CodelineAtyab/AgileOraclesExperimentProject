package com.example.deployment;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

@RestController
public class FileUploadController {

	private final Path uploadDir;

	public FileUploadController(@Value("${app.upload-dir:uploaded_files}") String uploadDir) {
		this.uploadDir = Paths.get(uploadDir).toAbsolutePath().normalize();
	}

	@PostMapping("/upload")
	public Map<String, String> upload(@RequestParam("file") MultipartFile file) throws IOException {
		if (file == null || file.isEmpty()) {
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "file is required");
		}

		String original = file.getOriginalFilename();
		if (original == null || original.isBlank()) {
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "filename is required");
		}

		// Prevent path traversal (e.g. ../../etc/passwd)
		String safeName = Paths.get(original).getFileName().toString();

		Files.createDirectories(uploadDir);
		Path destination = uploadDir.resolve(safeName);
		file.transferTo(destination);

		return Map.of(
				"message", "uploaded",
				"filename", safeName,
				"savedTo", destination.toString()
		);
	}
}
