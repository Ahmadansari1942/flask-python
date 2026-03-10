#!/bin/bash

# ─────────────────────────────────────────
# Restart Script — AWS CodeDeploy
# ─────────────────────────────────────────

echo "🚀 Starting deployment..."

# App folder pe jao
cd /home/ubuntu/flask-python

# Permissions fix karo
sudo chown -R ubuntu:ubuntu /home/ubuntu/flask-python

# Python dependencies install karo
echo "📦 Installing dependencies..."
pip3 install -r requirements.txt --break-system-packages

# Systemd reload karo
echo "🔄 Reloading systemd..."
sudo systemctl daemon-reload

# Flask service restart karo
echo "🔁 Restarting flask-blog service..."
sudo systemctl restart flask-blog

# Status check karo
sudo systemctl status flask-blog

echo "✅ Deployment complete!"
