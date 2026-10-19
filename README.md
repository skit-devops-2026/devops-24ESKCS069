# PlaceTrack

## Author

| Roll No. | Name | GitHub username |
|---|---|---|
| 24ESKCS069 | Aryan Sharma | aryan336542-coder |

## About

**PlaceTrack** is a web-based platform that helps students manage their placement preparation. It provides tools for tracking goals, subjects, aptitude, DSA, and placement activities in one place.

## Tech stack

- Frontend: HTML, CSS, JavaScript
- Web Server / Container: Nginx (Alpine)
- Monitoring: Prometheus & Grafana
- Orchestration: Kubernetes

## Running locally

```bash
make install
make run
```

## Live URL

https://devops-24eskcs069.onrender.com

## Running with Docker Compose

Build and start the application along with Prometheus and Grafana monitoring:

```bash
docker compose up -d --build
```

- Web App: http://localhost:8080
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000 (admin / admin)

## Kubernetes Deployment

Apply the deployment and service manifests:

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

Verify the deployment and running pods:

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```

Forward traffic to local machine:

```bash
kubectl port-forward service/placetrack-service 8080:80
```

## Monitoring & Metrics

- Prometheus configuration: `monitoring/prometheus.yml`
- Grafana dashboard definition: `monitoring/dashboard.json`
- Deployment evidence: `docs/deployment.png`

## Health endpoint

`GET /health` returns HTTP 200 with service health status.
