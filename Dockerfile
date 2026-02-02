# Stage 1: Build & Security Check Preparation
FROM nginx:alpine AS builder
COPY index.html /usr/share/nginx/html/

# Stage 2: Final Production Image (The Lean One)
FROM nginx:alpine
# Copy from builder
COPY --from=builder /usr/share/nginx/html/index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]