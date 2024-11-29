# # Use Node.js 14 as the base image
# FROM node:14

# # Set the working directory
# WORKDIR /app

# # Copy package.json and yarn.lock (or package-lock.json)
# COPY package.json yarn.lock ./

# # Install dependencies
# RUN yarn install --frozen-lockfile

# # Copy the rest of the application code
# COPY . .

# # Build the React application
# RUN yarn build

# # Expose port 3000 (default for most React apps)
# EXPOSE 3000

# # Start the application
# CMD ["yarn", "start"]

FROM node:14

WORKDIR '/app'

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

CMD ["yarn", "start"]