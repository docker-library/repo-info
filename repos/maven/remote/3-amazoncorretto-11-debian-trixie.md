## `maven:3-amazoncorretto-11-debian-trixie`

```console
$ docker pull maven@sha256:265e7076864cca9ff527fdc6ed5f950df22e519d131c5e760d8a0f27975b8113
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:8a861bea0a40b2451f77ba168832e81a4a11155cd77a68974777f74ae4d7c02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241896095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c116877c58e50e3d878966471365fa546cdb28d1ab7fc539c3caa5b3ef2b1a3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:27:25 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:27:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:27:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 05 Aug 2026 01:27:25 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 05 Aug 2026 01:27:25 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:27:25 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:27:25 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 05 Aug 2026 01:27:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Aug 2026 01:27:25 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 05 Aug 2026 01:27:25 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:27:25 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 05 Aug 2026 01:27:25 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Aug 2026 01:27:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Aug 2026 01:27:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Aug 2026 01:27:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e94664f9ee6c77948bb5b144df28b259f60e0840f92ab0334f3dafab4c1fa0`  
		Last Modified: Wed, 05 Aug 2026 01:27:48 GMT  
		Size: 202.8 MB (202754364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525446f44709fbd49f3b0a2e9d27554d6db862ff6e15b42472761d5469bfce93`  
		Last Modified: Wed, 05 Aug 2026 01:27:44 GMT  
		Size: 9.4 MB (9359964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612372d108fc647981facaa5234f130c1ec29fe5ecdd83f5be1865bc3996187a`  
		Last Modified: Wed, 05 Aug 2026 01:27:43 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae4c895cee6cfad5e98fb72e8b03e224e58c85062a525cdabe8705c2c7b8e0b`  
		Last Modified: Wed, 05 Aug 2026 01:27:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:fa7ff4b082b0d948f56f80b09cf4687a8bf178b90d3e5bd9735d544af184d64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3127594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca2dc98b164df7ef87dbc86afd80cfbaea2b7af2a9db27beb072a89be531e41`

```dockerfile
```

-	Layers:
	-	`sha256:37f75dabe4389cc972fdffafe05f36ac085da4918822d06ac8c7194a0c803d70`  
		Last Modified: Wed, 05 Aug 2026 01:27:44 GMT  
		Size: 3.1 MB (3110069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:183aedede5fcc3eabb82cf9d84fb3cf0fcefe10d4ed761affb7e766c5bdc5ef2`  
		Last Modified: Wed, 05 Aug 2026 01:27:43 GMT  
		Size: 17.5 KB (17525 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:30f25843a61a2da694a4a8e98a57f6206f220f9e1dd1f28473bdc05c741082d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239325689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22199122347c376961b844a2ec8d1bbfd1146b8260a448c8f04b314af7dd074`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:33:32 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:33:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 05 Aug 2026 01:33:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 05 Aug 2026 01:33:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:33:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 05 Aug 2026 01:33:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 05 Aug 2026 01:33:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Aug 2026 01:33:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 05 Aug 2026 01:33:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:33:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 05 Aug 2026 01:33:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Aug 2026 01:33:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Aug 2026 01:33:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Aug 2026 01:33:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e768927a5758a13ae9279f3016fbe5609365c423718cd38715ab1b56b93afd`  
		Last Modified: Wed, 05 Aug 2026 01:33:55 GMT  
		Size: 199.8 MB (199821109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683853513ab88faa3ef39f2f0b93d5e75a198c6fdfc1857edbda2f77ad5ef6aa`  
		Last Modified: Wed, 05 Aug 2026 01:33:51 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0acd927ad0e8a831bc1e4b45602ee8ec1818ffad10bf4549823488c2d5ef725`  
		Last Modified: Wed, 05 Aug 2026 01:33:51 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a52b2603991adcc6cd8c77be0b2a37a3c9636c2c5022ac99149c413a4158b1`  
		Last Modified: Wed, 05 Aug 2026 01:33:51 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:8bb1bc320a9d651dcfa2aac76df3e385f8511edd8201b28245cd509162acec6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3128055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2306234d2b6c4541a7aa0311a81e3eced82ce135a8aaeffdbfc9794ecbe9376a`

```dockerfile
```

-	Layers:
	-	`sha256:41b917d769aff8378c1a729ace980e828f6f8652da08d6013019a44304f8b13c`  
		Last Modified: Wed, 05 Aug 2026 01:33:51 GMT  
		Size: 3.1 MB (3110361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1551277d7c439f02052866d516388381ab9bfdc5245c9448f3a0a5fdfb84b30b`  
		Last Modified: Wed, 05 Aug 2026 01:33:51 GMT  
		Size: 17.7 KB (17694 bytes)  
		MIME: application/vnd.in-toto+json
