FROM node:18 As development

RUN apt-get update && apt-get install -y bash

# Install dapr CLI
RUN wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash

# Install daprd
ARG DAPR_BUILD_DIR
COPY $DAPR_BUILD_DIR /opt/dapr
ENV PATH="/opt/dapr/:${PATH}"
RUN dapr init --slim

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

ENTRYPOINT ["dapr"]
CMD ["run", "--app-id", "user-service", "--app-port", "4000", "--dapr-http-port", "3500", "npm", "run", "start-user"]

