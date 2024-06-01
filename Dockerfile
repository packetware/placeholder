# Stage 1: Build the SvelteKit app
FROM node:18 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the SvelteKit app
RUN npm run build

# Stage 2: Serve the SvelteKit app with a lightweight server
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built files from the builder stage
COPY --from=builder /app/build ./build

# Install a lightweight HTTP server
RUN npm install -g serve

# Expose port 3000 to the outside world
EXPOSE 3000

# Serve the SvelteKit app
CMD ["serve", "-s", "build", "-l", "3000"]
