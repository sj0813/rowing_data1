"""
GCBME 2026 Interactive Dashboards - Local Web Server
Automatically serves index.html and associated dashboards on localhost and local network.
"""
import os
import sys
import socket
import webbrowser
from http.server import HTTPServer, SimpleHTTPRequestHandler

PORT = 8080
DIRECTORY = os.path.dirname(os.path.abspath(__file__))

def get_local_ip():
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception:
        return "127.0.0.1"

class CustomHandler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

    def end_headers(self):
        # Enable CORS and caching headers
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Cache-Control", "no-cache, no-store, must-revalidate")
        super().end_headers()

def run_server():
    global PORT
    while PORT < 8100:
        try:
            server = HTTPServer(("0.0.0.0", PORT), CustomHandler)
            break
        except OSError:
            PORT += 1

    local_ip = get_local_ip()
    local_url = f"http://localhost:{PORT}/index.html"
    network_url = f"http://{local_ip}:{PORT}/index.html"

    print("=" * 65)
    print("  GCBME 2026: INTERACTIVE SENSOR DASHBOARDS WEB SERVER")
    print("=" * 65)
    print(f"  Local Browser URL:   {local_url}")
    print(f"  Local Network (LAN): {network_url}")
    print("=" * 65)
    print("  Serving index.html and all 3 sensor dashboards.")
    print("  Press Ctrl+C in this window anytime to stop the server.")
    print("=" * 65)

    # Automatically open browser
    try:
        webbrowser.open(local_url)
    except Exception as e:
        print(f"Could not auto-open browser: {e}")

    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nStopping web server. Goodbye!")
        server.server_close()

if __name__ == "__main__":
    run_server()
