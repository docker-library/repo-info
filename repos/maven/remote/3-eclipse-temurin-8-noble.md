## `maven:3-eclipse-temurin-8-noble`

```console
$ docker pull maven@sha256:7f617b47ddb905b5140e16a2a062c7313b1680c0b40c6bb020ab3b3c3b9eb459
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-eclipse-temurin-8-noble` - linux; amd64

```console
$ docker pull maven@sha256:67654f79258444b12be92784ee3b21e1b394401bbf52d4b5445346450207717d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133785864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa629bd10db0d78af2dc439d07f9b56d71b36050753b652fae87f5cd4f26735e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:18:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:18:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:18:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:18:27 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 02:18:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 02:18:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:18:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:18:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 04:36:52 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:36:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:36:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:36:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:36:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:36:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:36:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:36:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:36:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:36:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:36:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:36:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:36:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a892712268eb183028218fb6742b97f2c98ad2a63f99bd3eb8afb9f5e1687436`  
		Last Modified: Wed, 09 Sep 2026 02:18:42 GMT  
		Size: 16.9 MB (16946757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d904c8a9cccc513b47cae966257342d8641c09a01668d5c54e60406385d7a09`  
		Last Modified: Wed, 09 Sep 2026 02:18:43 GMT  
		Size: 55.2 MB (55168819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23991f21fdef43c1bf524fcfcb5a6a1234adb76dec31a9d882679158ab665bf6`  
		Last Modified: Wed, 09 Sep 2026 02:18:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e85fdc2e892a69f033264634714c4de33b530ae473a76b9b9b46376a1ef80d`  
		Last Modified: Wed, 09 Sep 2026 02:18:41 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8ac971a756e0607aea590a7546b28e1834f06c4bac561a631aef532069c8e4`  
		Last Modified: Wed, 09 Sep 2026 04:37:04 GMT  
		Size: 22.5 MB (22543448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d89f7327b86dcc125bf25ed5bf97fc95f34a7a43c3bac2a6bc285dc00b44af8`  
		Last Modified: Wed, 09 Sep 2026 04:37:04 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b889a83e303d14e235abb8d62efe3759078a3cbb2bb0b0ff849a7b4d79ea943e`  
		Last Modified: Wed, 09 Sep 2026 04:37:03 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e92dd1a6a58b517fb13cb402264c28154bd77c055f59b3963c44be0d8bb96a`  
		Last Modified: Wed, 09 Sep 2026 04:37:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-noble` - unknown; unknown

```console
$ docker pull maven@sha256:510c3a925f57dfd2679edb5699befa7dc5d0ebb311c776ab075cdfb9db37d7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5016839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3f92e9e9e471ce9d1c90a11b1ef2d10550d5d0726119d081d543ce51cbe85b`

```dockerfile
```

-	Layers:
	-	`sha256:acf40a58e8b46b177555fe8e5bb0263c25dfc11406d75b0e9548068aa205ed61`  
		Last Modified: Wed, 09 Sep 2026 04:37:04 GMT  
		Size: 5.0 MB (4998479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40ae3923ce7a0104999605afb289baa4d6b465f11cd68b68156b4ae233a057ed`  
		Last Modified: Wed, 09 Sep 2026 04:37:03 GMT  
		Size: 18.4 KB (18360 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-8-noble` - linux; arm variant v7

```console
$ docker pull maven@sha256:122963c2e78049d00b59e9b8838588383380bd55a0146f2df2d1d15deeb8a609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.8 MB (130802490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8daa517de64542d6fa440655ae9c40c90614f9d8c3a1e6772e1da5a012c913d7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:55 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:16:07 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:16:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 19:16:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:16:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:16:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 19:16:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 19:16:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 19:16:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 19:16:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 19:16:07 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 19:16:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 19:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 19:16:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5ff123d65f06a06e05df4fbc985dfb1e712c4893a99a91f3560b32af611e1`  
		Last Modified: Tue, 18 Aug 2026 19:12:18 GMT  
		Size: 16.3 MB (16268689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9346f73c68c242c1dcff803b4d9347e4ef0451eb5b3ca0a5f3d4fa5627af61`  
		Last Modified: Tue, 18 Aug 2026 19:12:19 GMT  
		Size: 50.5 MB (50541462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75a6c25ae29b38f2ea91bd3e7898a091d31454ea291002ebf4a55c836448726`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce6110d55149d8f0859d0cf20788727ad956518790a69b08adc6cf61611640`  
		Last Modified: Tue, 18 Aug 2026 19:12:17 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98938c3545145528a30207f3e0bdb0ef6be716499620ec9c5456a7509822accf`  
		Last Modified: Fri, 21 Aug 2026 19:16:19 GMT  
		Size: 27.8 MB (27755957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59480d0127adfbf7194da43474338ffae7561d71a4a16a1bc47c099e82e9b7b`  
		Last Modified: Fri, 21 Aug 2026 19:16:19 GMT  
		Size: 9.4 MB (9359982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e61d64fabe57c0f64e97c8c1dc0fc54ece836a3d1fb8fdd844cefc82fafe72`  
		Last Modified: Fri, 21 Aug 2026 19:16:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3ecd39921e011d8c44239554d2d253cc5c15f4f19521af814b98f6bf2ab9ec`  
		Last Modified: Fri, 21 Aug 2026 19:16:19 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-noble` - unknown; unknown

```console
$ docker pull maven@sha256:6b716c8e00ac1ad1be632bd8d2636edf91d5a9230d227d0eaf4183ee94f093d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5019527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ca1e641f90c50d67902e4fd740903e690c3cecd874f5ff0bb7be822e98b33a`

```dockerfile
```

-	Layers:
	-	`sha256:7661dfd0d6a46d1b03f820eb3e359a28ac7d47ef337c4b384102b006feaff1ab`  
		Last Modified: Fri, 21 Aug 2026 19:16:19 GMT  
		Size: 5.0 MB (5001217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:637595803f6efd61fc15e5c66b40d274a803885a38d3111b84f7ccc7d2bbb471`  
		Last Modified: Fri, 21 Aug 2026 19:16:18 GMT  
		Size: 18.3 KB (18310 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-8-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:017766c19881673d2e9dd96c5b690d1fc0d6e2f400ee645331f3dc00b7a43d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132142796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317d138bbf48175a9a005f193979c83fb6015f10b5bd4ed690eeca6c6a3e12d0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:16:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:16:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:16:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:16:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:16:58 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 02:17:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 02:17:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:17:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:17:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 04:25:01 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:25:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:25:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:25:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:25:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:25:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:25:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:25:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:25:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:25:02 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:25:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:25:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:25:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bc764654bd5709cc7b7f340c97491d7460686e7fc0df2a0be9830cefded2bb`  
		Last Modified: Wed, 09 Sep 2026 02:17:15 GMT  
		Size: 17.0 MB (16955018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd2cab2a2787293810c3a0e46c62e52be05b04aa683709beb2490f1f8646f82`  
		Last Modified: Wed, 09 Sep 2026 02:17:16 GMT  
		Size: 54.3 MB (54269531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633ffb33a5b4f76d2aec71273efe0866e0cabe88fe6bdaa11cdc344588834446`  
		Last Modified: Wed, 09 Sep 2026 02:17:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f384eb2273f7d2e318cc8916331649cf66e3b0ae3dc7836074ccc05737d417d`  
		Last Modified: Wed, 09 Sep 2026 02:17:14 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cccf96ec7c47c63b3855242641757975b8f92549bed5622bfdcca3067065f8c`  
		Last Modified: Wed, 09 Sep 2026 04:25:14 GMT  
		Size: 22.6 MB (22614646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b350948de73abfea7cfb2f3eb035c0528467245a4921b9f8c7a749e886a871`  
		Last Modified: Wed, 09 Sep 2026 04:25:14 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556e42471cd3b8fb8267c32ef196c757d50fc9e76a5e34c7af41ee2318b42673`  
		Last Modified: Wed, 09 Sep 2026 04:25:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fbb97b297d8dc96bce7e345d888348155173539c99d2999ccf0ade568e70b4`  
		Last Modified: Wed, 09 Sep 2026 04:25:13 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-noble` - unknown; unknown

```console
$ docker pull maven@sha256:4445e0898bedd4c58600d5dfd7e5399eb4ffed42e3a8483df75d648fb0e3f7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5024255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d83d0657f4cf317cac73cee33b8fd0b62165fcc976aa648aa0d15810fb6d663`

```dockerfile
```

-	Layers:
	-	`sha256:89ca228cf0528b5109ed974c28e0573d172c149792bc014f6ffe65fe5aa2306d`  
		Last Modified: Wed, 09 Sep 2026 04:25:14 GMT  
		Size: 5.0 MB (5005726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cd1bfb143f729e12193175091ec31c7c750df6c48a1bb2531be54cbd19e88d5`  
		Last Modified: Wed, 09 Sep 2026 04:25:13 GMT  
		Size: 18.5 KB (18529 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-8-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:025e246023e5e4c6b4106856d658a58cd7f0eb98021eb9fd1d157dc84762a0bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.8 MB (141771994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197be070b697f27853edc135ccd8c48151b0aa8253ec3b2e0908aeda9412fbed`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:40:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:40:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:42 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 08:27:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 08:27:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 08:27:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 08:27:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 12:15:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:15:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:15:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:15:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:15:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:15:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:15:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:15:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:15:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:15:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:15:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:15:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534b9e52b727924d85eaedbfec7629e05367d54b30c2fb398a39f17cf4ffef25`  
		Last Modified: Wed, 09 Sep 2026 01:42:21 GMT  
		Size: 18.8 MB (18766961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7afc5e16e40c7cc60076192dff3579ab2ade538142a26ea980f637daa8821f3`  
		Last Modified: Wed, 09 Sep 2026 08:28:41 GMT  
		Size: 52.7 MB (52675393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30605ad6ca4d63b85f9de6131ce45fc978cc51265433a89c0547d3a09322d91a`  
		Last Modified: Wed, 09 Sep 2026 08:28:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7936378834cd34ea15a2e415c1874350739f7539af11d5427bf326a4c3d1c44d`  
		Last Modified: Wed, 09 Sep 2026 08:28:39 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf0970653d8fe7a518e23a4ff16059e1bcc734bf011508af2902378f7f8912d`  
		Last Modified: Wed, 09 Sep 2026 12:15:37 GMT  
		Size: 26.6 MB (26589191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116ffbecc4725759486a137dac750fc772cd150bfad03977b1210192390c5ea0`  
		Last Modified: Wed, 09 Sep 2026 12:15:36 GMT  
		Size: 9.4 MB (9359950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0091ef46a0066c4acfc9091ff1f5788c31e02971a1c4106bcda7ea5b85445`  
		Last Modified: Wed, 09 Sep 2026 12:15:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2825baac6d1ccef76de91434e65b99c61714ac8725a169c00f070b6b67e194`  
		Last Modified: Wed, 09 Sep 2026 12:15:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-8-noble` - unknown; unknown

```console
$ docker pull maven@sha256:b2949470060bad7abbea9a28f195a35b02fc6d2b3beedfde7f9f6bf8d9dc7c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5022452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3db537cda2acd4c76efab911e05cac5c7bdba27baa07a40274ac9c587104771`

```dockerfile
```

-	Layers:
	-	`sha256:9a2f72086fcf8a49b2e9c561faa5dba18479bb17c7d079ce7f4f2ac986bd47e6`  
		Last Modified: Wed, 09 Sep 2026 12:15:36 GMT  
		Size: 5.0 MB (5004024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbb0dde1c7987139995d2ff6342bd284af8b3d08823e1e35c015e84332bf4e74`  
		Last Modified: Wed, 09 Sep 2026 12:15:35 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
