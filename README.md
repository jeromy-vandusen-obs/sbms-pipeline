# Spring Boot Microservices - Pipeline

## Jenkins Job Configuration

1. On the main Jenkins dashboard page, click "New Item".
2. Enter "sbms-pipeline" in the "name" field, select "Pipeline", and click "OK".
3. Scroll down to the "Pipeline" section and in "Definition" select "Pipeline script from SCM".
4. In "SCM", select "Git".
5. In "Repository URL", enter "https://github.com/jeromy-vandusen-obs/sbms-pipeline.git".
6. Deselect "Lightweight checkout" and click "Save".
