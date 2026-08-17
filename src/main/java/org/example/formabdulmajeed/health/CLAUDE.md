# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project state

Near-empty Spring Boot 4.1.0 / Java 17 / Maven service. Production code is `HealthApplication` (a bare `@SpringBootApplication`
entry point) plus `HealthController`, which serves `GET /health` → `200 {"status":"UP"}`. There is no persistence layer and no
security. Spring Boot Actuator is deliberately **not** on the classpath — `/health` is a hand-rolled `@RestController`, so adding
Actuator later would collide with it unless the management endpoints are moved to a different base path or port.

## Commands

Maven is **not** installed on PATH; always use the wrapper. On Windows use `mvnw.cmd` (PowerShell/cmd) or `./mvnw` (Git Bash).
The wrapper is `distributionType=only-script` with no committed `maven-wrapper.jar` — the first invocation downloads Apache
Maven 3.9.16, so it needs network access and will be slow.

```powershell
.\mvnw.cmd spring-boot:run                              # run the app (default port 8080)
.\mvnw.cmd clean package                                # build the executable jar into target/
.\mvnw.cmd test                                         # run all tests
.\mvnw.cmd test -Dtest=HealthControllerTests            # run a single test class
.\mvnw.cmd test -Dtest=HealthControllerTests#healthReturnsOk  # run a single test method
java -jar target/health-0.0.1-SNAPSHOT.jar              # run the packaged jar
```

There is no linter or formatter configured.

**Port 8080 is occupied on this machine** by an unrelated Spring Security app (it answers `/health` with a login page, which is
easy to mistake for this service failing). Run on another port when starting locally, and confirm the log actually shows this app
bound to the port before trusting a response:

```powershell
.\mvnw.cmd spring-boot:run "-Dspring-boot.run.arguments=--server.port=8099"
```

## Spring Boot 4 starter naming

This project uses the Boot 4 starter names, which differ from the Boot 3 names most examples and training data use:

- `spring-boot-starter-webmvc` — **not** `spring-boot-starter-web`
- `spring-boot-starter-webmvc-test` (test scope) — **not** `spring-boot-starter-test`

Test-slice annotations also moved into module-specific packages. Verified by inspecting the jars:

- `org.springframework.boot.webmvc.test.autoconfigure.WebMvcTest` — **not** `org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest`
- `org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc` — same relocation

`@SpringBootTest` is unchanged at `org.springframework.boot.test.context.SpringBootTest`, and `MockMvc` / `MockMvcRequestBuilders`
are unchanged (they come from spring-test, not Boot). When an import can't be resolved, list the jar's entries rather than guessing
the Boot 3 path.

When adding dependencies, check the Spring Boot 4.1 docs rather than copying Boot 3 snippets; several starters were split or
renamed in the 4.x line.

## Conventions

- Base package is `com.example.health`; new code belongs under it so component scanning from `HealthApplication` picks it up.
- Source files use **tabs** for indentation (Initializr default).
- Configuration lives in `src/main/resources/application.properties` (currently only `spring.application.name=health`).
- `.gitignore` excludes `HELP.md` and `.idea/` — don't rely on those being tracked.
