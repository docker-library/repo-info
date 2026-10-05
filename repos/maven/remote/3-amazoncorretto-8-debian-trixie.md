## `maven:3-amazoncorretto-8-debian-trixie`

```console
$ docker pull maven@sha256:dc636ff1d11820a62d254b509653c3867c6803c0bbe1bd9bf1f33b5760203d4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-debian-trixie` - linux; amd64

```console
$ docker pull maven@sha256:97a63d931ea80de4a565d3a2a0e1d36a929e275ab6164d9a78643d1f3b4474ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152462057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f7ff7c22db9f098246c31058c6468d94bea59cf3746577c4de0c481d867379`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:32:47 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:32:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Mon, 05 Oct 2026 21:32:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:32:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:32:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:32:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:32:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:32:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:32:48 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:32:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:32:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:32:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5431fc39f3135539e689d103c1f0503eb88ea1b1e537735b8d260c7bf1494841`  
		Last Modified: Mon, 05 Oct 2026 21:33:05 GMT  
		Size: 112.6 MB (112571636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ffed4782ce8ed884d7e52477fc3a28eeb97931ae8e2642a0682c530cfa28dd`  
		Last Modified: Mon, 05 Oct 2026 21:33:02 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec8e82ebb8b328fb7a20a910921b2bb560babf55a91d1d63ceff3651660b94c`  
		Last Modified: Mon, 05 Oct 2026 21:33:02 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef04e803e687c715d399f9f6460adb752e77e2e96612b1e970ec314b00e1406`  
		Last Modified: Mon, 05 Oct 2026 21:33:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:16899a283951ff4d3c471fafac184b73814fba86dde8616d6ba1217fc868cc61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d797f061149e57b6de00f6f82a1a81991cf7438179c1c30323a3a6359d7424`

```dockerfile
```

-	Layers:
	-	`sha256:933bc6eac78103a8ec1a8ca74f65094a37dbcfa44c1a6eabb16c2cec59cf2cdf`  
		Last Modified: Mon, 05 Oct 2026 21:33:02 GMT  
		Size: 3.0 MB (2975683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c59e75fe6fcb0f5a066d1941b5b8094be42aa72239802fa65b5eea16c92677`  
		Last Modified: Mon, 05 Oct 2026 21:33:02 GMT  
		Size: 17.5 KB (17541 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-debian-trixie` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:80ed7398667c8c0b316a2c794c59c0a4732d3e3125135e09d7f1c277349ca24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152970217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2ed41c06fef55dffab474d86dc31bfa7c98dcc936ca7db78f89c309dc6dc4f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:34:11 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-1.8.0-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:34:11 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:34:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
# Mon, 05 Oct 2026 21:34:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:34:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:34:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:34:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:34:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:34:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:34:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:34:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:34:11 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:34:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:34:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:34:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffa6e8746f8133a86e6f74a9ead7401241c58f024fdb8f37f4b40401eec5c8c`  
		Last Modified: Mon, 05 Oct 2026 21:34:29 GMT  
		Size: 112.7 MB (112720533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8c2974ab3682bead5d6072a66838ebc315352345f96f46152cc20fb7d81c87`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 10.1 MB (10058990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd84bfe28dfa8b636bef362a26117559ecbb48e104b9e3635101a68a348ee70`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab7466120a3c8c590f408bb22a2f4eb71bb21ce6718fcf26bc18b981b1d0e15`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-debian-trixie` - unknown; unknown

```console
$ docker pull maven@sha256:5901f795144388a1b9da83fd786b3f53adb395bb1eacfb80ac7e3c5268edfb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5999b60bfa7a8730ae52b65fa34a824484103aec98d12e05ed05e19a158c6dc`

```dockerfile
```

-	Layers:
	-	`sha256:c66ca7dc5131c715861e7db35fd711f0e4c75a0f0e93d394cfae4424cb3fef76`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 3.0 MB (2976055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab4a7a3e77912a9016ba5f596c50f8a187f09141b966e8a60b867d6dbdb76495`  
		Last Modified: Mon, 05 Oct 2026 21:34:26 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
