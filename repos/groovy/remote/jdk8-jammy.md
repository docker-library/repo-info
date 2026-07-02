## `groovy:jdk8-jammy`

```console
$ docker pull groovy@sha256:671baee5c841bd03fffd55b786ea27411bf4eb5d5b065c9b6e7a17b95f0a2159
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

### `groovy:jdk8-jammy` - linux; amd64

```console
$ docker pull groovy@sha256:7ed519e5d15d6a8ada2d25265bf0fb46dfac61b287e1658861cb37e75da71763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131630903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e799dadca1bec8f2a352468f21a5cb5f2abc5ad39c1192106559a8a22ebae59`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:00 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:00 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:20:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:20:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:22:41 GMT
CMD ["groovysh"]
# Thu, 02 Jul 2026 05:22:41 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 02 Jul 2026 05:22:41 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy     && chmod --recursive 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln --symbolic /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 02 Jul 2026 05:22:41 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 02 Jul 2026 05:22:41 GMT
WORKDIR /home/groovy
# Thu, 02 Jul 2026 05:22:46 GMT
RUN set -o errexit -o nounset     && apt-get update     && echo "Installing build dependencies"     && apt-get install --yes --no-install-recommends         dirmngr         gnupg         unzip         wget     && rm --recursive --force /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:22:46 GMT
ENV GROOVY_VERSION=4.0.32
# Thu, 02 Jul 2026 05:23:10 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm --force "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 02 Jul 2026 05:23:10 GMT
USER 1000:1000
# Thu, 02 Jul 2026 05:23:11 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83caec24db30544ad023e308841e2497566aaa819910d279af3dab84337293d`  
		Last Modified: Thu, 02 Jul 2026 02:20:17 GMT  
		Size: 16.1 MB (16110094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f019651bdb399e03596ae0470e52d90bf3cd782c277704d30e45680ea76cc0`  
		Last Modified: Thu, 02 Jul 2026 02:20:18 GMT  
		Size: 55.2 MB (55200417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1573a07acd71b8059e8ea4bff2b6dc84ba528e98e62f6452ce5459659636a49`  
		Last Modified: Thu, 02 Jul 2026 02:20:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d692438693d701173c536207d0a199e8fcc81627cbdc648190b05342f804408`  
		Last Modified: Thu, 02 Jul 2026 02:20:16 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbaba4c2034bac28b1ea71a39017791696ef79a8f39b3957826973fd70c8e4f3`  
		Last Modified: Thu, 02 Jul 2026 05:23:20 GMT  
		Size: 4.3 KB (4331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c767d1ee915be3541400ad707b386a2829affca10d81448f43af09c5179cbe`  
		Last Modified: Thu, 02 Jul 2026 05:23:20 GMT  
		Size: 244.8 KB (244826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1827a75a45ac40f4f2c11928b6d75d56e411797e439d2416da498e242eee52f3`  
		Last Modified: Thu, 02 Jul 2026 05:23:21 GMT  
		Size: 30.3 MB (30329570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3707e03d9fdc031127a98b11bb2ac3fb9189d2ab8250fcf90cd183b8db8ef9`  
		Last Modified: Thu, 02 Jul 2026 05:23:20 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-jammy` - unknown; unknown

```console
$ docker pull groovy@sha256:c79ed243d8b383396ab0592d3a021ea1f1c3b10b0fdb2e46bea289cfe6f38122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4191002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35eb499034c300cebe05c6f327f7f674fb3897cba667017532332a4bce2c6028`

```dockerfile
```

-	Layers:
	-	`sha256:751b82cba9564559c0919599d276f721bb3267549d0515dc1567634544a4a9cf`  
		Last Modified: Thu, 02 Jul 2026 05:23:20 GMT  
		Size: 4.2 MB (4165501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11ce7d999b15fae39be6a9ac98e46a015fc3efff983090088dd63670a453027d`  
		Last Modified: Thu, 02 Jul 2026 05:23:19 GMT  
		Size: 25.5 KB (25501 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:jdk8-jammy` - linux; arm variant v7

```console
$ docker pull groovy@sha256:4031a67c78a6a6069daa399d19f19e3872a185906e1183c1da74a49c0970caf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123801009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53a206b47b442cefe33f05d648a9e1395fc47e42409da9a75f98d21037a4f86`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 29 Jun 2026 10:37:54 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:37:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:37:55 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:37:58 GMT
ADD file:e7546f5c79f7a8bd7a469346f2df5e5e441b3dd98eeb097f35a0e4e12f178e37 in / 
# Mon, 29 Jun 2026 10:37:58 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:11:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:11:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:11:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:11:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:11:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:11:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:19:13 GMT
CMD ["groovysh"]
# Thu, 02 Jul 2026 05:19:13 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 02 Jul 2026 05:19:13 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy     && chmod --recursive 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln --symbolic /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 02 Jul 2026 05:19:13 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 02 Jul 2026 05:19:13 GMT
WORKDIR /home/groovy
# Thu, 02 Jul 2026 05:19:18 GMT
RUN set -o errexit -o nounset     && apt-get update     && echo "Installing build dependencies"     && apt-get install --yes --no-install-recommends         dirmngr         gnupg         unzip         wget     && rm --recursive --force /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:19:18 GMT
ENV GROOVY_VERSION=4.0.32
# Thu, 02 Jul 2026 05:19:33 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm --force "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 02 Jul 2026 05:19:33 GMT
USER 1000:1000
# Thu, 02 Jul 2026 05:19:34 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:7eb07192b0445ceecf2631737a38663aecbae5a424838f6da1b061161080da18`  
		Last Modified: Mon, 29 Jun 2026 11:25:33 GMT  
		Size: 26.8 MB (26844294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f9de81a5eaebc9544f2a64764b0230f502342303ee52c5ad783237a7b733aa`  
		Last Modified: Thu, 02 Jul 2026 02:12:12 GMT  
		Size: 15.8 MB (15840974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99410ba2fde2e3b8f3c8be0c1248a9444aebde109772f5aa0bef1c1488e8c9eb`  
		Last Modified: Thu, 02 Jul 2026 02:12:13 GMT  
		Size: 50.5 MB (50547787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5154cc7353df6ff20e7afcc21c382074c22bb0617b546c1c634fc6ffabf8eb35`  
		Last Modified: Thu, 02 Jul 2026 02:12:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20aad6b05735208439a10a9643b15ef36b92429fd9b64e755e2397785b3d151a`  
		Last Modified: Thu, 02 Jul 2026 02:12:11 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ead15b103b5679baaa205441145e347ab0ac9ff11e7f30f67d994dc7c5dd913`  
		Last Modified: Thu, 02 Jul 2026 05:19:43 GMT  
		Size: 4.3 KB (4317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a80873bb14f1bbc604006f9d980d143e6b1ae38f8b491fffa48714d45e15a40`  
		Last Modified: Thu, 02 Jul 2026 05:19:43 GMT  
		Size: 231.3 KB (231281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862d210700c2b55fd8fd034bd06db3b914be9dca4ce7b9a4db6e75ca684618b`  
		Last Modified: Thu, 02 Jul 2026 05:19:44 GMT  
		Size: 30.3 MB (30329571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad148f9ebfb500bc9d13a48b886a23271cb28cfcc351b9a304ee13de8f5a21f`  
		Last Modified: Thu, 02 Jul 2026 05:19:43 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-jammy` - unknown; unknown

```console
$ docker pull groovy@sha256:3d02f4a055f60f8aa9af448c299be61cb59a2a9053a10bafa19d507b39cbd144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4195192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bef2dd4dbbce740c819559452fb1d7785319a640e095e07cec6e4930ad31cf`

```dockerfile
```

-	Layers:
	-	`sha256:06b223ffcda24ce9aecd69e8f97256e2d59df4b95a106383ad9dd29985fca66a`  
		Last Modified: Thu, 02 Jul 2026 05:19:43 GMT  
		Size: 4.2 MB (4169540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9b900f49d87f29c5cfe3b7d7515047348206e861841a6cac4128430226f538f`  
		Last Modified: Thu, 02 Jul 2026 05:19:43 GMT  
		Size: 25.7 KB (25652 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:jdk8-jammy` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:e2271b637f30a6c3a777431444efbdafd7cabbdbcbdb534089cb81db3a9f25b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128508854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50cf970b3a9d0b2d44fe8ded335b3898f1a4bcfbbd9f51bf367e7d33efb53b06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:18:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:18:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:18:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:18:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:18:52 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:18:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:18:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:18:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:18:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:22:42 GMT
CMD ["groovysh"]
# Thu, 02 Jul 2026 05:22:42 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 02 Jul 2026 05:22:42 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy     && chmod --recursive 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln --symbolic /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 02 Jul 2026 05:22:42 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 02 Jul 2026 05:22:42 GMT
WORKDIR /home/groovy
# Thu, 02 Jul 2026 05:22:48 GMT
RUN set -o errexit -o nounset     && apt-get update     && echo "Installing build dependencies"     && apt-get install --yes --no-install-recommends         dirmngr         gnupg         unzip         wget     && rm --recursive --force /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:22:48 GMT
ENV GROOVY_VERSION=4.0.32
# Thu, 02 Jul 2026 05:23:04 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm --force "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 02 Jul 2026 05:23:04 GMT
USER 1000:1000
# Thu, 02 Jul 2026 05:23:05 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df52751c4073dc3bbd2ee2b5060cf3c37357f694fda2e6e833676845ef0756b4`  
		Last Modified: Thu, 02 Jul 2026 02:19:10 GMT  
		Size: 16.0 MB (16039925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aed612b0f382987020b2235b113468346324322c2a351b904f4e79e7540868b`  
		Last Modified: Thu, 02 Jul 2026 02:19:11 GMT  
		Size: 54.3 MB (54277483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b575b0ed38b1e57d947e34b5f2ebf6569ade63f90d5046d343e0957015ecd4`  
		Last Modified: Thu, 02 Jul 2026 02:19:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ebd7b811a1dc09545576f3af57b3aacc2f00df8771415c17b30d28b696979d`  
		Last Modified: Thu, 02 Jul 2026 02:19:09 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f21674035331bd7b938e2236eb9e6025b90a07ee5c6d153b61aabf8f1e41384`  
		Last Modified: Thu, 02 Jul 2026 05:23:14 GMT  
		Size: 4.3 KB (4334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b2859b0f660ff5847b0495932854f66276c80507637417035dce12374af29a`  
		Last Modified: Thu, 02 Jul 2026 05:23:14 GMT  
		Size: 241.6 KB (241576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdefcc658f441b8f363ad35892cca08747161d04515dd2a085077758d38948ee`  
		Last Modified: Thu, 02 Jul 2026 05:23:15 GMT  
		Size: 30.3 MB (30329570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4209cdbb949966bbf567a6ab1106e1b117f92e2caf250b2b716930f9dd3d7a`  
		Last Modified: Thu, 02 Jul 2026 05:23:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-jammy` - unknown; unknown

```console
$ docker pull groovy@sha256:d8d03966e697df58ae25bd39b957e238f2a7ca6bd2edaede355904240e7a0b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4191627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e096a8b0680905034a44fbd6a0f04365e4458fdc28443614a5322087d733d9`

```dockerfile
```

-	Layers:
	-	`sha256:da106469364d00273f89737ee70f6c6ece72762e28576ba6f9c11e229c53ad02`  
		Last Modified: Thu, 02 Jul 2026 05:23:14 GMT  
		Size: 4.2 MB (4165929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0812d58474d85c8f2ad268f7969c529d91c0a9efafbe34900ed1ea084db42df1`  
		Last Modified: Thu, 02 Jul 2026 05:23:14 GMT  
		Size: 25.7 KB (25698 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:jdk8-jammy` - linux; ppc64le

```console
$ docker pull groovy@sha256:833923c3004956a8604d265a041cfadef8bb3dcddc78f6d7aea57b4dc287a490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135511415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a76a4692b94450cd5fcaaf01a8f87dbf8921ad0c7e61411580bcaee8336fe8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:13:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:13:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:13:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:13:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:13:16 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:13:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:13:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:13:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:13:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:41:44 GMT
CMD ["groovysh"]
# Thu, 02 Jul 2026 05:41:44 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 02 Jul 2026 05:41:44 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy     && chmod --recursive 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln --symbolic /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 02 Jul 2026 05:41:44 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 02 Jul 2026 05:41:45 GMT
WORKDIR /home/groovy
# Thu, 02 Jul 2026 05:41:51 GMT
RUN set -o errexit -o nounset     && apt-get update     && echo "Installing build dependencies"     && apt-get install --yes --no-install-recommends         dirmngr         gnupg         unzip         wget     && rm --recursive --force /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:41:51 GMT
ENV GROOVY_VERSION=4.0.32
# Thu, 02 Jul 2026 05:42:00 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm --force "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 02 Jul 2026 05:42:00 GMT
USER 1000:1000
# Thu, 02 Jul 2026 05:42:02 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b14b2b02d4baef1d2438e749f36a329449d9fbbc7eb0c0ec2dba87c8bd0b`  
		Last Modified: Thu, 02 Jul 2026 02:13:47 GMT  
		Size: 17.6 MB (17582601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae917ca1fd6f2697783a14c39ec3815d11657f6df14474ba4c6475e35deee411`  
		Last Modified: Thu, 02 Jul 2026 02:13:49 GMT  
		Size: 52.7 MB (52670243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2967a79405fec792c79780c1a3091792dc0c67521218ecd52e7734b0bba5494c`  
		Last Modified: Thu, 02 Jul 2026 02:13:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1ec167a5920585deb88364155b6fb00a28b8ae0258c07e624b23a03341e393`  
		Last Modified: Thu, 02 Jul 2026 02:13:47 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e688421d886f069b0f1ffdcd0070d0ec1e97deb0296eed15389161307ae369`  
		Last Modified: Thu, 02 Jul 2026 05:42:20 GMT  
		Size: 4.3 KB (4334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d4c9506725f2d3d987753799fb680553f92ae0636b51699e3f6cc3352a2595`  
		Last Modified: Thu, 02 Jul 2026 05:42:20 GMT  
		Size: 280.0 KB (280016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb3fb2eb2a006fb7145efe4480c60c61a702b313f322154e6e5ca1609a527a3`  
		Last Modified: Thu, 02 Jul 2026 05:42:21 GMT  
		Size: 30.3 MB (30329570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae7d88f5bcacf226000f8a58e4d9323ff6da10616084aad7eaf98e0afda1cf0`  
		Last Modified: Thu, 02 Jul 2026 05:42:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-jammy` - unknown; unknown

```console
$ docker pull groovy@sha256:a2d631920e32bf2762818c83fa42a34c727ea5db213e075aa96fd0c854452c4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4193861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5955466d1268b46e300f194a405a84ab07e365d13e540c7efa57d7be1c2a308`

```dockerfile
```

-	Layers:
	-	`sha256:de8ffb3c3616ea8a914ff1dbd47ff31f0a65576ab606af8f56910bbbb875c436`  
		Last Modified: Thu, 02 Jul 2026 05:42:20 GMT  
		Size: 4.2 MB (4168286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:569dca37a5a3bedd9e370d28950179171b1ba71d54f8b29745b7fa96b1278cd1`  
		Last Modified: Thu, 02 Jul 2026 05:42:20 GMT  
		Size: 25.6 KB (25575 bytes)  
		MIME: application/vnd.in-toto+json
