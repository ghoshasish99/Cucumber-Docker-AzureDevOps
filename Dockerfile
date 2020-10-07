FROM    maven:3.6.0-jdk-8
LABEL maintainer="Ashish Ghosh"
ENV GRIDURL=""
RUN     mkdir /functional-test
WORKDIR /functional-test
COPY    . .
RUN     mvn dependency:resolve
RUN     ls
RUN     cd src
RUN     ls
CMD mvn test -Dcucumber.options="--tags @Search" -DExecutionPlatform="GRID_CHROME" -Dpat="lupunhvemn7sl3n7d76zcwdzz2wvxfat2ggudj4ojf5exqmnboya" -Dhub=${GRIDURL}