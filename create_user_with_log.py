import subprocess

username = input("Enter the new username: ")

# Create the user
subprocess.run(["sudo", "useradd", "-m", "-s", "/bin/bash", username])

# Set the password
print(f"Set password for {username}")
subprocess.run(["sudo", "passwd", username])

# Add to sudo group
subprocess.run(["sudo", "usermod", "-aG", "sudo", username])

# Log
with open("/var/log/user_creation.log", "a") as f:
    f.write(f"{username} created with sudo access\n")
