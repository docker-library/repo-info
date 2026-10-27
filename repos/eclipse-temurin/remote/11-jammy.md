## `eclipse-temurin:11-jammy`

```console
$ docker pull eclipse-temurin@sha256:0dd28bec527d30fd91ddb994547988c876814b72697243148a3e672137fc662b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:11-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b7ff112d9bde19e97f7a8e906df4d585ebae3ac674187c43df8f427d61ff5bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191739670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b170eaac43b1eb5fc10a6ad45f6a770801b327820269f8a2f2d2ae0ec5a434d5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:12:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:12:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:12:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:12:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:12:10 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Mon, 26 Oct 2026 23:12:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:12:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:12:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:12:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:12:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503e3b9ce8ffe3046405e8936d9db754fc3867ff4ba2e19dc48a706e1dda383`  
		Last Modified: Mon, 26 Oct 2026 23:12:35 GMT  
		Size: 16.1 MB (16115597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c88aaacb26f599dea354c980376d44916390f6858a0d225c5337945e11ba959`  
		Last Modified: Mon, 26 Oct 2026 23:12:38 GMT  
		Size: 145.9 MB (145868961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3dd76953ef8e55662c8dae9697fcea12686dd403e3ecb6bf5e76a3401e9bdc`  
		Last Modified: Mon, 26 Oct 2026 23:12:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8c9c5bd5cdd480595db201f93536ba7868a2706adf361e5b629f0e5a106087`  
		Last Modified: Mon, 26 Oct 2026 23:12:34 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b4f917488df5442e6236e8655d7cc9037a563c17cd705da8d44d6564efff1c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3991927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade41815fa7a702d1a2e668d46d6ee2cac675df67e56e73e4e9a1f58c6c02744`

```dockerfile
```

-	Layers:
	-	`sha256:165930fac542ad851b4bf2c896ec0d9338c66e0bee9cb720f2c976c71d682ce4`  
		Last Modified: Mon, 26 Oct 2026 23:12:34 GMT  
		Size: 4.0 MB (3968426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1e3a586cd060dd5afbf90887f8f28abd5eab78d06c74e731f025b71a57bae42`  
		Last Modified: Mon, 26 Oct 2026 23:12:34 GMT  
		Size: 23.5 KB (23501 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jammy` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:86363c5c29e579f06a301951af8dc83d3b221a46e28c51a3584597a496531882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181074655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972a8ebc5316b1d9b326fc3b540fa6c76dd10eff3401fb325f6fe369fddf52fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:10 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:10 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:14 GMT
ADD file:d5aead1ec8013ad6e577d2e1fc302b0d1e483da56b7a5a810a7ffb6694213525 in / 
# Sun, 25 Oct 2026 20:11:14 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:49:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:49:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:49:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:49:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:49:07 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Mon, 26 Oct 2026 23:49:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:49:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:49:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:49:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:49:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d196a6cf79788071c4ad2a7753c754da85fe91c1c5cc6df9c5b8651a5582d129`  
		Last Modified: Sun, 25 Oct 2026 20:45:34 GMT  
		Size: 26.9 MB (26856546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c02d4c8366bde4c6b379acea359650ded0ae1873b78f41fd2a1ea835c44358`  
		Last Modified: Mon, 26 Oct 2026 23:49:34 GMT  
		Size: 15.9 MB (15851442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714c3aa59cc308efa46e9adee0485d5a2fdc699db58b89d81b638911499cbcb9`  
		Last Modified: Mon, 26 Oct 2026 23:49:37 GMT  
		Size: 138.4 MB (138364045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd457867183c25258d61bc21f613e2b44060228148952ed45cf879f9ffefb22`  
		Last Modified: Mon, 26 Oct 2026 23:49:33 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4561de9d83dec11cd30a984653562f658d01b7efa4ee19ee7dbacc84c915e123`  
		Last Modified: Mon, 26 Oct 2026 23:49:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4c240e655462248a3b98832c457c11feb9e8ab244ccb7d639af19c304b1157b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3993080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4660e5af6a0b355de9b7310ef6e896245fd2784b4df7b4fcc06308da232a8a3`

```dockerfile
```

-	Layers:
	-	`sha256:4e0f0824567ca1f54d5420fccf2aa8832b17fbee0d8b9babbbf2b920384bcc86`  
		Last Modified: Mon, 26 Oct 2026 23:49:34 GMT  
		Size: 4.0 MB (3969481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f2e9161c422bcd812ebc7d02d5a5e47297330ec6cbe5cb66f7d29f54fc70f5`  
		Last Modified: Mon, 26 Oct 2026 23:49:33 GMT  
		Size: 23.6 KB (23599 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9670374adf528464d132159b883cea5ca787570154e35e57311b250e50d478c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186322948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa6d67418d2f4387677278a9f253065efa12ec380b2e5462ce9ca7ab798309e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:16:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:16:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:16:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:16:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:16:33 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Mon, 26 Oct 2026 23:16:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:16:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:16:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:16:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:16:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dede79ecb6170ed1ecf4e1d38948630199f07a15fb09ff5d38b0e4363bf4e9f`  
		Last Modified: Mon, 26 Oct 2026 23:16:58 GMT  
		Size: 16.1 MB (16050219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9773ef93c144be08fa8adc260b4873b13b91d15e3ed262b49a4d6865750dbf3`  
		Last Modified: Mon, 26 Oct 2026 23:17:01 GMT  
		Size: 142.6 MB (142585502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01deb50042bfba6cc21fb70dd8ca0b7028173c4c833fb2b6e3a3c1586078f23`  
		Last Modified: Mon, 26 Oct 2026 23:16:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fb536203a1c114b1f9a669b9e5d3b88c22c473816dfad45c2bdd95c970ddd0`  
		Last Modified: Mon, 26 Oct 2026 23:16:58 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:178bea488cd6869ee664db08f2d7481c3500ac0eb4a454d43018ace6652b813b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3992335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8991a1b9fb4e0c0a14f6a7955ffed41254aa7895563ebcb7efe3b0003ed647f5`

```dockerfile
```

-	Layers:
	-	`sha256:8ea7434899e022ac8a9894f929a1f7f2074fc3ad0391186edbb05b5eeccb1eeb`  
		Last Modified: Mon, 26 Oct 2026 23:16:58 GMT  
		Size: 4.0 MB (3968712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52d76ccd612c63a0aaac0569692f99147f98700713588b316095a2778413a8d`  
		Last Modified: Mon, 26 Oct 2026 23:16:58 GMT  
		Size: 23.6 KB (23623 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d5edaba9fff5934d46e1d489e9bc0a5900f7bf098a5c429e27cfeecc72c90ec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185408708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddf0a4e88696893155e9123a3d9ac1752df05f0108854b7bdc734a837d357ce`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Sat, 17 Oct 2026 00:23:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:23:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:23:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:23:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:23:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e3558c4f6c1091f241bd9ad640816cc4633252705f4d740aff7b96ec07bfab`  
		Last Modified: Sat, 17 Oct 2026 00:20:54 GMT  
		Size: 17.6 MB (17596929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68eebb6ea8d6c5ba712794a46994dbcadd8fb958b688923fef04af2e659b7c`  
		Last Modified: Sat, 17 Oct 2026 00:24:36 GMT  
		Size: 133.1 MB (133105516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b917a12948bc724392f76e9ed77036beadd09c68f9fa75d0e0a0bcb8f1f6d4a`  
		Last Modified: Sat, 17 Oct 2026 00:24:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4707967919f4bff3cb0ed12f08a0e8186d19395d0a1be75d24211122da18c58d`  
		Last Modified: Sat, 17 Oct 2026 00:24:33 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:13844070cd7316f77a1eb8b745bd5102235e0229e2c1ad90b32e3cf40118929d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3994146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1eac964845eddde99bcb2c13d8eb92f1f88ec2fe57804a177e17f89547d9e8c`

```dockerfile
```

-	Layers:
	-	`sha256:915b9fe4809ff385d8d04a9ab9ad621f1d3d033fd2c75cc646d80c71cf72b894`  
		Last Modified: Sat, 17 Oct 2026 00:24:33 GMT  
		Size: 4.0 MB (3970603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c20ca2c758c7ec15cc10cddc3676c47606795e9b2c7418e97399c317e4498eb`  
		Last Modified: Sat, 17 Oct 2026 00:24:33 GMT  
		Size: 23.5 KB (23543 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:28282dd937c8caabf0a1805e9cf762804a72006836e1f9641e063d5e0e42dd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (170984803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa0c30dafa06114e7b1cf5d3daa1ffbd54287cdbe73abf288d77177d6335398`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:36:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:36:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:36:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:39 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Mon, 26 Oct 2026 23:36:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:36:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:36:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d169779a67e66e8e202d483a5f005a4608161d30bb29a274e18478277af2146`  
		Last Modified: Mon, 26 Oct 2026 23:37:20 GMT  
		Size: 16.1 MB (16113828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8a066a8f7e97e6e09eb2ded5faf58baf158250d0ba466e9863a91b0c130c5c`  
		Last Modified: Mon, 26 Oct 2026 23:37:22 GMT  
		Size: 126.6 MB (126645546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30832971c5ac713af315e4d95b4b180952ad34bedf4c0f6fdfbdc156701c2ef`  
		Last Modified: Mon, 26 Oct 2026 23:37:19 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056dca0125a1d3805b7472bc1f57f3473401515f3968eefb0f8067bd8aa8056b`  
		Last Modified: Mon, 26 Oct 2026 23:37:16 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:89cbfc7c1096912a525ee5a57485e33db001b34fdba9bec35ef7b8a7dff335df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1639900f802aa8214ba85a1ee435f2b902936d1fffc4aaddc06df1d0c537ab19`

```dockerfile
```

-	Layers:
	-	`sha256:f7c24564a56a90c75e8998e9b6605d5754589eb6ce0352447416cec50b84ac10`  
		Last Modified: Mon, 26 Oct 2026 23:37:19 GMT  
		Size: 4.0 MB (3965622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:899c2e24448585595f765cf2d422923b2c8b6f2196049d1be8a0567bfba558f1`  
		Last Modified: Mon, 26 Oct 2026 23:37:19 GMT  
		Size: 23.5 KB (23499 bytes)  
		MIME: application/vnd.in-toto+json
