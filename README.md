# AI Document Platform - Infrastructure

Docker Compose setup for running all services together.

## Prerequisites

- Docker Desktop installed
- All service repositories cloned in the same parent directory:

```
  projects/
  ├── backend/
  ├── ml-service/
  ├── frontendfrontend/
  └── infrastructure/  ← You are here
```

## Quick Start

### Clone Repositories

```bash
# Create parent directory
mkdir document-ai-platform
cd document-ai-platform

# Clone all repositories
git clone https://github.com/document-ai-platform/backend.git
git clone https://github.com/document-ai-platform/ml-service.git
git clone https://github.com/document-ai-platform/frontend.git
git clone https://github.com/document-ai-platform/infrastructure.git

# Go to infrastructure repo
cd ai-platform-infrastructure
```

### Start Services

```bash
# Using script
./scripts/start.sh

# Or manually
docker-compose up --build
```

### Access Application

- **Frontend:** http://localhost:3000
- **Backend API:** http://localhost:8080/api
- **ML Service:** http://localhost:5000

### Stop Services

```bash
# Using script
./scripts/stop.sh

# Or manually
docker-compose down
```
