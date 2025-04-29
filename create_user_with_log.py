import subprocess

username = input("Enter the new username: ")

# Create the user
subprocess.run(["sudo", "useradd", "-m", "-s", "/bin/bash", username])
