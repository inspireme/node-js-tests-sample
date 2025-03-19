FROM public.ecr.aws/amazonlinux/amazonlinux:latest
# Enable Extra Packages for Enterprise Linux (EPEL) for CentOS
#RUN yum install -y epel-release
# Install Node.js and npm
RUN yum install -y nodejs npm
WORKDIR /app
COPY . /app
RUN npm install
CMD ["node", "/src/index.js"]
