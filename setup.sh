#!/bin/bash

echo "🚀 Setting up Secure Notes Application..."

# Check if Java is installed
if ! command -v java &> /dev/null; then
    echo "❌ Java is not installed. Please install Java 21 or higher."
    exit 1
fi

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18 or higher."
    exit 1
fi

echo "✅ Prerequisites check passed!"

# Setup backend
echo "📦 Setting up backend..."
cd notes

# Copy configuration template
if [ ! -f "src/main/resources/application.properties" ]; then
    cp src/main/resources/application.properties.template src/main/resources/application.properties
    echo "📝 Created application.properties from template"
    echo "⚠️  Please update the configuration in notes/src/main/resources/application.properties"
fi

# Build backend
echo "🔨 Building backend..."
./mvnw clean install

cd ..

# Setup frontend
echo "📦 Setting up frontend..."
cd secure-notes-react

# Install dependencies
echo "📥 Installing frontend dependencies..."
npm install

cd ..

echo "✅ Setup complete!"
echo ""
echo "🎯 Next steps:"
echo "1. Update configuration in notes/src/main/resources/application.properties"
echo "2. Start backend: cd notes && ./mvnw spring-boot:run"
echo "3. Start frontend: cd secure-notes-react && npm start"
echo ""
echo "🌐 Access the application at http://localhost:3000"