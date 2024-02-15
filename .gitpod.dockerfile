FROM gitpod/workspace-full

# Add Microsoft repo and install azure-functions-core-tools-4
RUN sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
RUN sudo apt-get update
RUN sudo apt-get install azure-functions-core-tools-4