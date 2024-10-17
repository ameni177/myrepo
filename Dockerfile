# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the frontend and backend directories into the image
COPY ./frontend ./frontend
COPY ./backend ./backend

# Install dependencies for both frontend and backend
RUN cd frontend && npm install
RUN cd backend && npm install


# Expose ports for both frontend and backend
EXPOSE 3000 5005

# Start the backend and frontend
CMD ["bash", "-c", "cd backend && node server.js & cd frontend && npm start"]
