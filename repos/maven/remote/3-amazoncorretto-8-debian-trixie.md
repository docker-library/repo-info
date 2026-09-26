## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:60d54e890fe847cbeb17feefcb93eb654c6111a0555440b7a00f3a4ae327e0f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:619d9de34717afa577b79df5919c7fc06b4d6eeb1016aa07450ebc0e7dc5e34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148769125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f55220308adc7e22c2c053ee1fcebc075b4753654bc2d84fd959f492fbd553`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 00:24:05 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:24:05 GMT
ENV LANG=C.UTF-8
# Sat, 26 Sep 2026 00:24:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Sat, 26 Sep 2026 00:24:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:24:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:24:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:24:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:24:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:24:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:24:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:24:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:24:05 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:24:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:24:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:24:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f163d9cb709c4af1d1909924ecbf5e4336b90ab071ca599eaa9350329023f92`  
		Last Modified: Sat, 26 Sep 2026 00:24:21 GMT  
		Size: 109.6 MB (109577743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44bb8a8e5ef4eb44d1ad5c6961d2fd18511ded42d104e9f4a2a38750b6739fa`  
		Last Modified: Sat, 26 Sep 2026 00:24:19 GMT  
		Size: 9.4 MB (9359961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ff5a7627daabfdb8c88aeb087708a421c121b8bf458a34b4c7854aecf17bfa`  
		Last Modified: Sat, 26 Sep 2026 00:24:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae126eb80ec455a71f7cdc6aa1017f66d630a3e9061d59719e680f7469214aaf`  
		Last Modified: Sat, 26 Sep 2026 00:24:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:a3af64316bd3509ebd6620ab19c6981f4948378e83fa24e54eb6ca12aae17817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b75f505687125e8c45aa7dc388e8384092c2321577aa680d0274d5444cc274`

```dockerfile
```

-	Layers:
	-	`sha256:b94309e8acab20dbeaa1502ceeebb918337501971b9ef7cabbb5b88d9fc1affa`  
		Last Modified: Sat, 26 Sep 2026 00:24:18 GMT  
		Size: 3.0 MB (2970631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bbeffa722649174b70b2e2a64a668aceaf9a5d421470a6a8463ba491c97a740`  
		Last Modified: Sat, 26 Sep 2026 00:24:18 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8e544c4bacaee8ad35e78756f870012d86c97eb37325d2a5f2600b5d943d26d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148935650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a403ea9af8d224428ce1e238e1ee1e3bf43e80ed08a0e833398b431cbc1bb147`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 00:19:55 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:19:55 GMT
ENV LANG=C.UTF-8
# Sat, 26 Sep 2026 00:19:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Sat, 26 Sep 2026 00:19:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:19:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:19:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:19:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:19:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:19:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:19:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:19:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:19:55 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:19:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:19:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:19:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00dddc2cfd2064adaa6e3a924a503adddfd41dd96b957131e5013e895e8178b`  
		Last Modified: Sat, 26 Sep 2026 00:20:11 GMT  
		Size: 109.4 MB (109384990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad54aa81a5aa37bf2196a2887c0cf43fcff68ba62bd5c4918c3e7d9eb1632d80`  
		Last Modified: Sat, 26 Sep 2026 00:20:09 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383d51f4f93f3fe4eb5075861491df0ce04545e529d261411f2e9c880814899f`  
		Last Modified: Sat, 26 Sep 2026 00:20:09 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9465e24cd738d2f5a231d553701befbe6314ec6ef087b8bcc2ed189b9f7f8cf`  
		Last Modified: Sat, 26 Sep 2026 00:20:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:18aa021702284d79414c0fe4c40f7b23d02761bcb79248c9c965fabdbe99b420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fd4719ff4b31cdc5eeb10a9fce506c9f68006c682e319a3c536da8c3f4205`

```dockerfile
```

-	Layers:
	-	`sha256:07c5e2813818e55761b940328adc9b1a637b4c6558bd95dcb8a7212d388cc0a3`  
		Last Modified: Sat, 26 Sep 2026 00:20:09 GMT  
		Size: 3.0 MB (2971003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8275b50a236eb688a4db92207a6cc3151f71e4b3813fce3cf256cd30de3d97e2`  
		Last Modified: Sat, 26 Sep 2026 00:20:09 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
