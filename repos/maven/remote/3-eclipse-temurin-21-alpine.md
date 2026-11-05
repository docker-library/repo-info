## `maven:3-eclipse-temurin-21-alpine`

```console
$ docker pull maven@sha256:db0ebf0cb6f5f9e777250b0a7ee5359167f023d9cd1ed9508266c926234c32a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-21-alpine` - linux; amd64

```console
$ docker pull maven@sha256:ff0d4d84acdf6554da851fbaef62eada53d4290a0d2d4941eee94aff50440dc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197321277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a542300c0b1f871020784063ed4ab738de1f2f6c2d8f3f3f8539ddc75d44d0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:34 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:32:22 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 05 Nov 2026 20:32:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 20:32:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:32:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 20:32:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 20:32:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 20:32:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 20:32:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 20:32:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 20:32:28 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 20:32:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 20:32:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 20:32:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51708f96cbd718f1f575c791b74dcc853920cce80b5df73a45d493d942e3c1e1`  
		Last Modified: Thu, 05 Nov 2026 19:18:51 GMT  
		Size: 21.4 MB (21439698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c544b56550d0dd78ef07c133f66808efcee816fc25e79733d1f3c903d04618d`  
		Last Modified: Thu, 05 Nov 2026 19:18:54 GMT  
		Size: 158.6 MB (158623661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36cbce71b14bcd4166587886630abcc540e354e67a19519ae83a2606006916`  
		Last Modified: Thu, 05 Nov 2026 19:18:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba8dd297de437cbe53be6f3a5f7672a27d395ede86af7228a2c2dae0d4b3a97`  
		Last Modified: Thu, 05 Nov 2026 19:18:36 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3948366c6c6bc468480dbc54e55d9a40918ddefd7bdef9c404a135e6cefff088`  
		Last Modified: Thu, 05 Nov 2026 20:32:36 GMT  
		Size: 3.3 MB (3341620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d66bb232a5fd2fc5f551c7a6e2b4f8204536beb29dab2fd4f96283825b746f2`  
		Last Modified: Thu, 05 Nov 2026 20:32:36 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4009f5b93c739ac65846c07f234ec0b0165a9123091dc8ae245755eb05d365`  
		Last Modified: Thu, 05 Nov 2026 20:32:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0487e381109fb6b384cb516919303b48123e5bc5819f53d330414a06193d2ac`  
		Last Modified: Thu, 05 Nov 2026 20:32:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:3b7e263c56d843ef22f819b024d494233bdcf239bdeb1ce7b221df88bde96219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1247586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0a4dd4c6c0e183c41b2bf180c6fb6c3a5fe546e562a7980006b6e8396e1cfa`

```dockerfile
```

-	Layers:
	-	`sha256:e9d75355d186b530ca6f01a26b36e80eb77297dbce2b24f2f7cb18b3403bd2f0`  
		Last Modified: Thu, 05 Nov 2026 20:32:35 GMT  
		Size: 1.2 MB (1230537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5031b4a8b859273d17dc9aae05e71df737e53e8ab29dd4530fd959724caa6952`  
		Last Modified: Thu, 05 Nov 2026 20:32:35 GMT  
		Size: 17.0 KB (17049 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f2ea498b1005e02e5cd0285f70f1fd507e3f229f77bf615ac3abd84f0c3d3f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195730025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86938cdb7f3e7eafc7b74884ce30bf65f15fb79fd8b08351a39680226facfacb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:13 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:22 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a41f2d7b886ed318db51543cd045d94dd35179f66df302e6c3fd48a41a6dd9f5';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='dc453842ee3f24710258f42a95bdfe5c2bfc0ca9d70c12f950ead82aee0c8361';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:13:23 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 21:38:58 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Thu, 05 Nov 2026 21:38:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 21:38:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:38:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 21:38:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 21:38:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 21:38:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 21:38:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 21:38:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 21:38:59 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 21:38:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 21:38:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 21:38:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faea4c3333359972f9df28d73844fd41ff7e46e1b3cd5a7bb6890e65ccd0058`  
		Last Modified: Thu, 05 Nov 2026 19:13:40 GMT  
		Size: 21.4 MB (21418607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802f66e7af10c71f4a66c68c97bd27661c24d7db3664bd69a8a30ff6ccafebde`  
		Last Modified: Thu, 05 Nov 2026 19:13:43 GMT  
		Size: 156.6 MB (156641882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142a09de52318c861b2445cfb04014de63eab3940d96aa4c5309f2b38499b481`  
		Last Modified: Thu, 05 Nov 2026 19:13:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53d5bb198be0f1eb32b9280605a7fe7290c6fe4e2ac332145be7f1d95b8861b`  
		Last Modified: Thu, 05 Nov 2026 19:13:39 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4b60a8ba620198dda805c9a0c3c9c780900eae5958bbe2804beb3f03fb196c`  
		Last Modified: Thu, 05 Nov 2026 21:39:08 GMT  
		Size: 3.4 MB (3416364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159e885a4728ca6ee0949b31ebe7a936d72f24d46843929d273a012b20d9c314`  
		Last Modified: Thu, 05 Nov 2026 21:39:08 GMT  
		Size: 10.1 MB (10058973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c293bbee2a87a4a73b2543b57ba0e75422e935301691a019e8990cc40542d11`  
		Last Modified: Thu, 05 Nov 2026 21:39:08 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bc5189662705b47b234b9a426078846342608237f692a9e000507ccd06eae0`  
		Last Modified: Thu, 05 Nov 2026 21:39:08 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-21-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:ccbc0d98b0c094e892a639c22f939428f7af5ce46b873fe90b241c2e79c80aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1397071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8ca9d448aa8bacfba4d0f5dbd8f79fe258167d445e54624f944d238313fd27`

```dockerfile
```

-	Layers:
	-	`sha256:08b30c6920f230ee513dd6063feb8aa1e9f440c4edd6203b8e5519a58332d138`  
		Last Modified: Thu, 05 Nov 2026 21:39:08 GMT  
		Size: 1.4 MB (1379889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:145b68fad3dde3a69925a92190a7b6ca31d80d87bac5e93b59f4aa2081f7b8fa`  
		Last Modified: Thu, 05 Nov 2026 21:39:07 GMT  
		Size: 17.2 KB (17182 bytes)  
		MIME: application/vnd.in-toto+json
