Example Spring Boot Hello World application.

This uses Gradle to build a Spring Boot Web Application which responds to `GET /` with "hello"

It exposes a management interface on port 8081 because that might be a useful thing when running on
internal networks. Tools like Prometheus running internally can query metrics from that port, and
similarly load-balancers/orchestration things can do health check/liveness probes against that port.
But it does not need to be exposed to external traffic. 
