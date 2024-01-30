# Non-multi-stage Dockerfile

FROM golang:1.17

WORKDIR /app

COPY . .

# This value enables the Go module system if a go.mod file is present in the project directory. If no go.mod file is found, the legacy GOPATH mode is used
ENV GO111MODULE='auto'

# Build the Go application
RUN go build -o myapp

# The resulting image includes both the build environment and the source code
# This can result in a larger image size with unnecessary dependencies

# Run the application
CMD ["./myapp"]
