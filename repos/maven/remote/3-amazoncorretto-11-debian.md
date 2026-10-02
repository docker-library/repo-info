## `maven:3-amazoncorretto-11-debian`

```console
$ docker pull maven@sha256:ab4fd3e644a390a6e27d91be46a6c831c6693ca36c86caffba9002fa399fc2d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-debian` - linux; amd64

```console
$ docker pull maven@sha256:b95308b1f81129e148b37f25dd0568bbf4b00d70d7a4e18bb966e4164863fe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245629047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c65a629aad61fd2b7708860bf5d941169355ff9b01adfe4a9af5f4ab87de73`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 03:41:57 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:41:57 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 03:41:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 02 Oct 2026 03:41:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:41:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:41:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:41:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:41:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:41:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:41:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:41:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:41:57 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:41:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:41:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:41:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c607ee49298667de962c4990aac092373979908da8c7022cffb04ef109044ff8`  
		Last Modified: Fri, 02 Oct 2026 03:42:21 GMT  
		Size: 205.7 MB (205738626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1df4b7daf265e08ae840d331023327a76f68785c38cd78e5ee318912bcdfcb0`  
		Last Modified: Fri, 02 Oct 2026 03:42:17 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e983f028f3e39341397cac52581b593fdf106bd4e6a5004a138213ee16ed9aa`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acaf85e7dfd2a9cf730b29bbcf449a9c50d62fb8afbdd885eca49010b1f2a24`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:01214ffc0316134eb8e0e8bb29b6de4cd5ffd09c7f78b07d19722aa4e5f5ec42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3138568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175273f4d8442a24c25199022f5946e19651fe880e9aefb92bbd4cb6c7523834`

```dockerfile
```

-	Layers:
	-	`sha256:f87d22212b7861b074d19ff2c1e454fe8cd25a210bf51993ff2839abccd47e7b`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 3.1 MB (3121035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6bf46d0f07cd650a9ad8cb81674fb5670b18582a29194e501ff3aa738fd5087`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 17.5 KB (17533 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:debe7db17df629cb458b1f7fca8b96ead7d8acc231b03cfc9e61da7911cb77de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243414959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1103a7acc7c32cddea218509338c4a54f2a2c98c51425b36297ecda57f454c47`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 03:31:04 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-11-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:31:04 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 03:31:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 02 Oct 2026 03:31:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:31:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:31:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:31:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:31:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:31:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:31:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:31:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:31:05 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:31:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:31:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:31:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c596e4769daa29fad346de99aca82b0335a6f6024528ddd683a3c20749d9e3`  
		Last Modified: Fri, 02 Oct 2026 03:31:31 GMT  
		Size: 203.2 MB (203165276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb092dca0d429e645a427263aa3254f2f546cfedadd6549808dc60da79fd434`  
		Last Modified: Fri, 02 Oct 2026 03:31:25 GMT  
		Size: 10.1 MB (10058989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ef51abac927ab771b4adcfc95b2c73c4344710c690850cfea93171f7241160`  
		Last Modified: Fri, 02 Oct 2026 03:31:25 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5db3f3dde0ae9ad038ea3f08241567ec013a436dd2ad1879b744d86da7636d`  
		Last Modified: Fri, 02 Oct 2026 03:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-debian` - unknown; unknown

```console
$ docker pull maven@sha256:a7d60c751a13b518423fc2f7e7d7d1e049db53fd050c9c1744aff0ab4e5aeea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3139029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1277c9fcca0b982059f0b62317293ac150c97108701b82dd6ebbbd3b738ff278`

```dockerfile
```

-	Layers:
	-	`sha256:f309e6b1543e7e39f6d7f8aea22a8382ec00c38d04ebab14eed01afff3e12918`  
		Last Modified: Fri, 02 Oct 2026 03:31:25 GMT  
		Size: 3.1 MB (3121327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:629412b4693c5fb743168476903c2b7b8cba72acac8d4ed336fcc61c4f362758`  
		Last Modified: Fri, 02 Oct 2026 03:31:25 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
