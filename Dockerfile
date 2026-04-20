# Use the latest 2026 Playwright image
FROM mcr.microsoft.com/playwright:v1.59.1-noble

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Default command for the container
CMD ["npx", "playwright", "test"]