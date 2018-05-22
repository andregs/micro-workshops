FROM airhacks/wildfly
COPY ./target/micro-workshops.war ${DEPLOYMENT_DIR}
