## `maven:3-amazoncorretto-25-debian-trixie`

```console
$ docker pull maven@sha256:33d2d02926f550cc6ac181b255467450f4ed950ab224576f9fa0e9bb40e4eb1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:9bc9007bbe4c608d0e8d435e9d8328f8fffec728212dbfa1ec4f04f4f216e1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275540474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5d958b9b7ff094bd872fe00cb299253a3101217bd97bbb303b2f99e19a52c9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 02:19:12 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:19:12 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 02:19:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 27 Oct 2026 02:19:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:19:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:19:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:19:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:19:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:19:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:19:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:19:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:19:12 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:19:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:19:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:19:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e39dce05ffdd6775ba34eee34060cce24f4f703b4d89ceb531438ed44723dd6`  
		Last Modified: Tue, 27 Oct 2026 02:19:36 GMT  
		Size: 235.6 MB (235636881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544ca2241b3897aea304199fa94c38ebb2847a9753d370ed143cd486c2c4c641`  
		Last Modified: Tue, 27 Oct 2026 02:19:31 GMT  
		Size: 10.1 MB (10059007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1a4c551728c25f93bd58f97619b28d3a5d008072af43b146705987ea7b6ac1`  
		Last Modified: Tue, 27 Oct 2026 02:19:31 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e773b334d617b2c93b892d9ab7de703b773c3d45bb9cf2e1530aeebd464be06e`  
		Last Modified: Tue, 27 Oct 2026 02:19:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:bc38eb1f678dc86963a8e99928323087fe3f8bf5f2f5256ed5023208de1057b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3141143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edac934b0f22c706deaabb45e8b4fa2fa67ada641fbe210df124d1eaf59bdcb5`

```dockerfile
```

-	Layers:
	-	`sha256:ce1d14fbcb0629f6c05a3716eab0032c2f174113bca38b8f099dd5bc9411c472`  
		Last Modified: Tue, 27 Oct 2026 02:19:31 GMT  
		Size: 3.1 MB (3123610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef2b94a577df877054b2717966436275306b3a7c54448031dc9204b1c413df5`  
		Last Modified: Tue, 27 Oct 2026 02:19:31 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:046831c79c44f0c15878b1d9f8105a8104972e5543477f9cd11f03c12c74b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273581741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5317426c33330c81eaa07b9d42b9dee7dbc0199fd0b77c7d56be28083f955b0d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 02:16:49 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 02:16:50 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 02:16:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 27 Oct 2026 02:16:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:16:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:16:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:16:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:16:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:16:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:16:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:16:50 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:16:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:16:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:16:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:babdb6a7097fba0aa86931f54018fb7ccf24e3f8264bace38a716ba75a8e9eef`  
		Last Modified: Tue, 27 Oct 2026 02:17:16 GMT  
		Size: 233.3 MB (233321244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd7aa60be26a3fdef90cbe436ccc9546ac893463d06c6e9487b3ce42390cfa3`  
		Last Modified: Tue, 27 Oct 2026 02:17:12 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adee72bcf28d41abdf50f33f6ce2ab5c29197ffdc781dbb278abaf7bce8ba69d`  
		Last Modified: Tue, 27 Oct 2026 02:17:11 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4814ee48f6fdd2f98d8772923649f794b117c226db9c1e4451719c2debd1702`  
		Last Modified: Tue, 27 Oct 2026 02:17:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:1ece7d570eeb9ead6aaa8a83963d8895a486a6860e2c9b91e1a229a8ecccca95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3140964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b801c97a23bfcc9d7ceeb8fa90fc1721cd46e580e057225efe296694d71cc42`

```dockerfile
```

-	Layers:
	-	`sha256:2179619cc35a0ad329b471b2cb66a645962e3daa48373fc3c7af3aff9205cd46`  
		Last Modified: Tue, 27 Oct 2026 02:17:12 GMT  
		Size: 3.1 MB (3123262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e770c53877d4b6baa672d62eab01d4ac4144de4957b4fedcc1d5ba972ce6c86a`  
		Last Modified: Tue, 27 Oct 2026 02:17:11 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
