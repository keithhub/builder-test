FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Create a heredoc for a sample script
RUN tee /usr/local/bin/sample-script.sh <<'EOF'
#!/bin/bash
echo "This is a sample script using heredoc"
EOF

# Make the script executable
RUN chmod +x /usr/local/bin/sample-script.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/sample-script.sh"]
