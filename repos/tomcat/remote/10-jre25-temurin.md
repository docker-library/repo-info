## `tomcat:10-jre25-temurin`

```console
$ docker pull tomcat@sha256:14de0d147071b26fe771ffb80dfb424e039209790e4b4504dfe27e588154d88c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:10-jre25-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:b16fffc672c283074631370ad3db642ab62a3f8933f19651fbc735f7b3f9517f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121287926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef4f906547d688f56ff2b71960cabd65ef230ecafc5201d2a6a98d9b98db003`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:37 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:24 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:24 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:26:24 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:26:24 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:26:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:31 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:31 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:31 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb5e8c0a8fa783830d28c48ca9b202348f6012d97a6eb328fff7c5b2da8833`  
		Last Modified: Fri, 02 Oct 2026 01:20:06 GMT  
		Size: 13.9 MB (13865237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373c2940f7f12f639504dcd4cc700cb6744e41b3212f3ce7dcee66b08098660d`  
		Last Modified: Fri, 02 Oct 2026 01:20:07 GMT  
		Size: 63.1 MB (63076598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1adaf3e6ac5af220125fa187810aea0ee5639e73c1878eb31a32dbc0d993a8`  
		Last Modified: Fri, 02 Oct 2026 01:20:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003140865e13d62aabf51c5f00017ec7c2c4dd3496e3f3c28fab41f7be58cdfa`  
		Last Modified: Fri, 02 Oct 2026 03:26:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66e1604450c1deab72336c087e2a82a4989432986a68dac019a7123911756d7`  
		Last Modified: Fri, 02 Oct 2026 03:26:40 GMT  
		Size: 14.4 MB (14370567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a324b83597681aaed01a54723115bb6a9015b2967f50df8f30c8564f6d1483`  
		Last Modified: Fri, 02 Oct 2026 03:26:39 GMT  
		Size: 208.4 KB (208403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:7087698dca75419b758d4d95ae028a483ccbe74b0b73e516f272a02d69e7dc0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3135238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c99a8b0a054ce9622a9ae0f135572f76a4586d78f575b7c8ab411a72a3598b4`

```dockerfile
```

-	Layers:
	-	`sha256:d0f7b7df52cb6a6ce570fefe66ec6573b705643b616daa5430897683f8ab8f99`  
		Last Modified: Fri, 02 Oct 2026 03:26:39 GMT  
		Size: 3.1 MB (3112135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e54f682add4c9abb6ff647a80cc7293cc60649e807ad68f5ffb5b86fddd300`  
		Last Modified: Fri, 02 Oct 2026 03:26:39 GMT  
		Size: 23.1 KB (23103 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre25-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:7259482ac9991b7ff3857883b7c47a16911ec86454ca9d98fd109805a0c9f043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119160347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54817afab8b763ed8dfceeb01dcdaa9d25e2b5d4f43fcb296864b402702e348e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:36 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:25:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:27 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:25:27 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:25:27 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:25:27 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:33 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:33 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d1b9c21147316391e4e9fca155ff8d7437760b4477f9f5a1f1471e1f35b696`  
		Last Modified: Fri, 02 Oct 2026 01:20:08 GMT  
		Size: 13.7 MB (13714369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aebdd689b2d1fd4fce3e908cd13c88142f93a15735804b75fa4e0e87bd70009`  
		Last Modified: Fri, 02 Oct 2026 01:20:10 GMT  
		Size: 61.9 MB (61922406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fe4b870ceac3ced85484a0a893751f055a52deaf921346379f2ef6f3025334`  
		Last Modified: Fri, 02 Oct 2026 01:20:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119bb60f5cb9fe5e0bc86b1679c2357bece9ebc40d855ab91a59128a6f031d7b`  
		Last Modified: Fri, 02 Oct 2026 03:25:41 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b3069df04d42300ca2e2efa2cf20267400d77a8e5e2f1b4d709dfb49a71079`  
		Last Modified: Fri, 02 Oct 2026 03:25:42 GMT  
		Size: 14.4 MB (14372978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0486a4e7df46e651dab1d974402a9fa2ef3b51ec5f36c81112354d39a4f5bc3d`  
		Last Modified: Fri, 02 Oct 2026 03:25:41 GMT  
		Size: 207.8 KB (207809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:2780c76af36768cc31ff0ec38a6219a58cd2a2d09e4d90182076cada5d203b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3135968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47ee0d64d3b18dfbdb23316b24a17f492eb405e8de7f02ed2403db6e7653183`

```dockerfile
```

-	Layers:
	-	`sha256:d716aabb72d6c17abe9e5150c7e4aac1f70ef2ce05feabaac1aef98f1507d449`  
		Last Modified: Fri, 02 Oct 2026 03:25:41 GMT  
		Size: 3.1 MB (3112645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6856ed0f7845371960545dc9cd0cd5e0ab08b892457acd02a1d3a317f66faffa`  
		Last Modified: Fri, 02 Oct 2026 03:25:41 GMT  
		Size: 23.3 KB (23323 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre25-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:d440fe8859f40d015aef8d0a974ed143ff3fe8baef989110718bd9424558109f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125734156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4cf5244ba3605526ad5eb849521ac3ead8eef0a9d0d41e8b398f3d2a98635a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:56:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:56:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:56:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:56:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:56:56 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 03:57:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:52:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:52:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:52:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:52:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:52:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 08:57:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 08:57:22 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:57:28 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 08:57:28 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 08:57:28 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 08:57:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f153597dca38f40be45371fef5dbdceac3f8383bcc6b99c809df8cf7ac06cdf`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 14.7 MB (14712127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5539211d14d48f664a8f9048f938b150df7198c480ab3ba2ee91bf02c985c4dd`  
		Last Modified: Fri, 02 Oct 2026 03:58:38 GMT  
		Size: 62.0 MB (62018568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8ed74d13da2451e84107ec4d1beb219edf41fe8626df69bae4360c8a8a3ef8`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f02d6bf5b8fe8e0ea81e9d066207fe775da9a48bbce88aef441b85a81c32885`  
		Last Modified: Fri, 02 Oct 2026 08:53:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7964ea1eac809c28d7e31a800ec56077198fefe2be91b3ecff841cdd44b9810`  
		Last Modified: Fri, 02 Oct 2026 08:57:51 GMT  
		Size: 14.4 MB (14384828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533753fb302ba1eb96cf55607147e2f5bfdbf951435d6ea41bc3177d41b80bb5`  
		Last Modified: Fri, 02 Oct 2026 08:57:51 GMT  
		Size: 239.4 KB (239426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:f791c0988ea9c3f65e57658d2586942e7737569552190de2bcc4a5e536201db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3138654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf2696b7dbcbaf3b6d8951019a70422838e270e6b46eb9e4d0bc2f9b1f5f80e`

```dockerfile
```

-	Layers:
	-	`sha256:c702a30c9c77c8b2edcc517f47d225a8e656bd3765cfaf49094c01665c9141df`  
		Last Modified: Fri, 02 Oct 2026 08:57:51 GMT  
		Size: 3.1 MB (3115462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b5c7300108b0655add7544ddea68291d5c436c2e304705ad57fc15656f1d2fa`  
		Last Modified: Fri, 02 Oct 2026 08:57:51 GMT  
		Size: 23.2 KB (23192 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre25-temurin` - linux; riscv64

```console
$ docker pull tomcat@sha256:1bf810b41ec0fb92a92521fe032cf001422a4f463ba52d95ddcc52bac6743006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119038097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17b758529f13296ddce370cb021a3f9f88db3fc49409e75c338ed7baafdcbb0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:47:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:47:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:47:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:47:40 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 09 Sep 2026 02:49:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:49:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:49:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:49:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 08:41:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 08:41:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 08:41:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 08:41:35 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 08:41:35 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_MAJOR=10
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_VERSION=10.1.59
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Wed, 09 Sep 2026 08:51:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 08:51:44 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:51:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 08:51:51 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 08:51:51 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 08:51:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817d1fdb17c09dfe1b2195bc9a6c19690a7115be16a951b1749ba5e8ebac48f1`  
		Last Modified: Wed, 09 Sep 2026 02:52:25 GMT  
		Size: 11.5 MB (11527966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc42d9033ab0a6bf19bcde265e035787cc85cb3425527de9295d50f7337dd456`  
		Last Modified: Wed, 09 Sep 2026 02:52:33 GMT  
		Size: 61.7 MB (61680448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fd8964e23f7f108188d718dd1096a0aa38044ff29ad8c604cafb2712050c8d`  
		Last Modified: Wed, 09 Sep 2026 02:52:22 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b1d8683cdabe0c576ebbd411d7dceb60821b16ca43e38b72b8c87249a60408`  
		Last Modified: Wed, 09 Sep 2026 08:44:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66001220eda432b4841459b3fcd0d8dd218d62505d70d44f0e2cead837fc059`  
		Last Modified: Wed, 09 Sep 2026 08:53:35 GMT  
		Size: 14.6 MB (14567308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730d646a106dafbfb1453645ab6afc9b4694826cffea4d5a36f2925400c3a641`  
		Last Modified: Wed, 09 Sep 2026 08:53:33 GMT  
		Size: 210.5 KB (210474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:0092bee1f4e278124ecc012cdf1a216a30193a8bcb75e50199e3bb893ce9683d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3127336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bb610fbd5a9d78e51bc4c54bb347dee85bc022e147abcc173c31f9b3cecb29`

```dockerfile
```

-	Layers:
	-	`sha256:58af39c7ee31f96bc8becc05928d55aea93b49473ae7af43d100b8718f9b223c`  
		Last Modified: Wed, 09 Sep 2026 08:53:33 GMT  
		Size: 3.1 MB (3104150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f48e69c28cb67623a2b6c16a7010092b14de0db65f1f9790777a82ae79b09c`  
		Last Modified: Wed, 09 Sep 2026 08:53:32 GMT  
		Size: 23.2 KB (23186 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre25-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:5fd739096d5ec8585cbea7348f3c70db0959a5991874c0c63ad7ee3416f6eee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118899580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e4e1010b28cbe5bd470d7a423b52f7b8f2eb0ccec980247007f970e7b993b3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:35:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:35:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:37:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:37:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:37:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:37:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:37:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:37:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:37:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:37:52 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:37:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:40:17 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:40:20 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:40:20 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:40:20 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:40:20 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:40:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fa7478f5cbcb209e59a4ac7fba4414f06d5e8fedda68929327207ba0d55c1e`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 13.8 MB (13829684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5907d73839c84ac69cf6e0e1b169d2734c43056cfbaed6cb333265b7a0f5fb7`  
		Last Modified: Fri, 02 Oct 2026 01:38:31 GMT  
		Size: 60.5 MB (60530962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bd0718b39b046d036ec7c155527ea10a2e6fde1aa23af4ed5d13c12d13de71`  
		Last Modified: Fri, 02 Oct 2026 01:38:28 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b99715940ab06bef122fb11e0554470515bb640919df282e61efe3abbb205ac`  
		Last Modified: Fri, 02 Oct 2026 03:39:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f083822392af331afd2254abcfeec13d5e29e4bdef7d9ae88f9b1ac6523f515`  
		Last Modified: Fri, 02 Oct 2026 03:40:33 GMT  
		Size: 14.4 MB (14374833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896c6cf26ebf5f0ad2d675071b39577f1a275220ac56445784780f035e2a7893`  
		Last Modified: Fri, 02 Oct 2026 03:40:33 GMT  
		Size: 216.1 KB (216081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:89fe0ebd516640a1c54cb8adf57abd30a71d3d7e725f9ee0ef43a2bb3ce06906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3136836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4acc02f074ad10abe7e360558915150da43beb74396aa43bfb77d584c98ea8`

```dockerfile
```

-	Layers:
	-	`sha256:76962f3d35b62f51ce3c83a8f2f1c60989ddb8fe2fb669f6a6cbc174b9561d64`  
		Last Modified: Fri, 02 Oct 2026 03:40:33 GMT  
		Size: 3.1 MB (3113732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa96f6864ca721cf6088b4cdde9bdbfd5f91b960c2efb89cc53c1a189309d31f`  
		Last Modified: Fri, 02 Oct 2026 03:40:33 GMT  
		Size: 23.1 KB (23104 bytes)  
		MIME: application/vnd.in-toto+json
