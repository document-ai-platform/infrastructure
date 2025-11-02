#!/bin/bash

echo "🚀 Starting AI Document Platform..."

# Check if repos exist
if [ ! -d "../../document-ai-backend" ]; then
    echo "❌ Error: ai-platform-backend not found"
    echo "Please clone all repositories first"
    exit 1
fi

# Start services
docker-compose up --build -d

# Wait for services to be healthy
echo "⏳ Waiting for services to start..."
sleep 10

# Check health
echo ""
echo "📊 Service Status:"
docker-compose ps

echo ""
echo "✅ Services started!"
echo ""
echo "🌐 Access the application:"
echo "   Frontend:   http://localhost:3000"
echo "   Backend:    http://localhost:8080"
echo "   ML Service: http://localhost:5000"
echo ""
echo "📝 View logs: docker-compose logs -f"
echo "🛑 Stop:      docker-compose down"