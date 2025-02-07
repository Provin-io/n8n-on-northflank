# Use the official n8n image (already includes Tini as the entrypoint)
FROM n8nio/n8n:latest

# Explicitly configure Tini (optional but ensures PID 1 behavior)
ENV TINI_SUBREAPER=true
ENTRYPOINT ["/tini", "--"]
