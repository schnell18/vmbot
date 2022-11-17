#!/usr/bin/env bash

# install Oracle JDK
rpm -Uhv /tmp/jdk*.rpm
rm -f /tmp/jdk*.rpm

# install maven
MAVEN_VERSION=3.3.3
tar -xzvf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /usr/local/
ln -s /usr/local/apache-maven-${MAVEN_VERSION} /usr/local/maven
rm -f /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz

# install gradle
GRADLE_VERSION=2.11
unzip /tmp/gradle-${GRADLE_VERSION}-bin.zip -d /usr/local/
ln -s /usr/local/gradle-${GRADLE_VERSION} /usr/local/gradle
rm -f /tmp/gradle-${GRADLE_VERSION}-bin.zip

# make java, gradle, maven available to every user
cat <<'EOF' > /etc/profile.d/java.sh
export JAVA_HOME=/usr/java/latest
export GRADLE_HOME=/usr/local/gradle
export MAVEN_HOME=/usr/local/maven
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin
EOF

