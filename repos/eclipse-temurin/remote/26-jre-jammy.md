## `eclipse-temurin:26-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:57bb9140a944641339bcd46ae182e7ad234557903a96b9db66a42c743a2e5775
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:26-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:97816b273a89c0911f4925868f7f9cfbb76904dd3f29e10bd25be315416dd45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105678425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f3ee0e1e0368ec5b8c19260e2247ed525016b89e5bbb4282fe1bc76ee7f682`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:40:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:40:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:40:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:40:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:40:10 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:40:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:40:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:40:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:40:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d7c75d4b2446da7c0f6ce89f7716ed285d0a914b790b135aca53a406a9089b`  
		Last Modified: Fri, 25 Sep 2026 22:40:44 GMT  
		Size: 11.4 MB (11367733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa2bd07a5f16f2c1c37d6ce946a075c0a6175375c24af88bdafbaac2fc70dc7`  
		Last Modified: Fri, 25 Sep 2026 22:40:45 GMT  
		Size: 64.6 MB (64557945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094ac3d0c1aea52cc3a51f3706037333738ae780ee869658b701bfac53d9b04e`  
		Last Modified: Fri, 25 Sep 2026 22:40:43 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4c36b2fcb9dcb1553c60513f195155a14622a5d5739cb3b343af076cfc141932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11272c183b5a667fada1ada5873cabe30a40876fb3916bbd45107a619e98f21e`

```dockerfile
```

-	Layers:
	-	`sha256:8cc6c2cf3c4843633b2405da9d702166b8afd0d2220c2f2d87c09a7977ffbe66`  
		Last Modified: Fri, 25 Sep 2026 22:40:43 GMT  
		Size: 3.6 MB (3631238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b5a15242e4121a6bc90a7d04be7f936ea58c7605aa997aeacc0b4df198f2262`  
		Last Modified: Fri, 25 Sep 2026 22:40:43 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:715158f4275f14ef0ed2cd95dc67388af2b9cb31d3c10dd48d9922cae352da47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102469022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e587b1239619e2d534f6c21e10be9451897cdce188281e5d94520fd520b41405`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:39:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:39:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:39:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:39:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:39:14 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:39:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a10e9ce1f06e1b8a005334965d6dc51058984040096be7c7162d2fc4809358e`  
		Last Modified: Fri, 25 Sep 2026 22:39:48 GMT  
		Size: 11.3 MB (11322773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f1225d469bbc7d0150c7be308f43c2385cbc64b73a26504aa0a2f6df4f91f6`  
		Last Modified: Fri, 25 Sep 2026 22:39:49 GMT  
		Size: 63.5 MB (63461006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef96934f3f6f13ea437a48de42c9e39dd3642fe1ce9434f77c78ec7b00bf1fd`  
		Last Modified: Fri, 25 Sep 2026 22:39:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:40240a301b88523733c6e36586b069ca5e41a3fd34e86e7295f586eda44fbd9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98786febbe06c76f9b82d7ea30b938bbb979cc533b825cdb4f2ab5b7f866575a`

```dockerfile
```

-	Layers:
	-	`sha256:9c522b10eaef9f0a679c452ed49e63f11ee1920d9a7ad1d02682488af7a5fc4b`  
		Last Modified: Fri, 25 Sep 2026 22:39:47 GMT  
		Size: 3.6 MB (3630876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75cc07ee17273e1ca38ed1b7d80ce58efe3efecaf7735d5d18982c40f2fa58d3`  
		Last Modified: Fri, 25 Sep 2026 22:39:47 GMT  
		Size: 22.4 KB (22395 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:03c04f815aa1f3eff69a87fd4e1835dd44b42d6c61eb3406195ac26629843239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110178235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccdba9aa636ff69b2acf6fbc3fa18ea006daa4a5544e243847641de8cfd532cd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:01:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:01:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:01:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:01:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:01:03 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 02:08:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='585c4cce5807ce5677289a123680a8648c84c9afac66727a0e3027298d8e32c7';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='3c689572d2ea7aa3e19db5e5bc4ee41e90b557593d15eefcec179a9b8abfff0e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='8698a0734da25b9edc552eb80e9db8e69583afbcecbfda291c9f23bac4062f17';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='5803ccac6551ec18aada9ab58a55d7fa3b82f5e698dfd32f8ed16f5dd4b5255e';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:08:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:08:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:08:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54afc2e391855185bd6a7bdbf4ac62ebf6c229517b632cc332cae089acbc8d2`  
		Last Modified: Wed, 09 Sep 2026 02:03:28 GMT  
		Size: 11.9 MB (11850506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecc96d98ef829c24de4db8307ce27a5162943be69d410e8a4ef8affa9c248df`  
		Last Modified: Wed, 09 Sep 2026 02:10:08 GMT  
		Size: 63.6 MB (63622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118c68e8264dfd4a746164047d4b2db2b7e97ea79e1fd94407e6ad66a547fb62`  
		Last Modified: Wed, 09 Sep 2026 02:10:06 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5692f10219112fd8de6bd976914fbbcb1ced36ee58affa857d5a75fe12d6dc15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3656852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2181402ae5a26e93ef6a9a98f5af8ff47883e74afe39becd58d9bd9f1545456f`

```dockerfile
```

-	Layers:
	-	`sha256:75b82b048f115fe338bfcb6247065576cc3420843cd8b65ee3765d651a519ace`  
		Last Modified: Wed, 09 Sep 2026 02:10:06 GMT  
		Size: 3.6 MB (3634555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e9f3ca6ce2c19c770ce86c7c64d23fddd0ed9597238ad0345e8b3a541701ae4`  
		Last Modified: Wed, 09 Sep 2026 02:10:06 GMT  
		Size: 22.3 KB (22297 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:197efdbd6b08ddcb703d6578f84a86ca61ace674e2ec84fb9b29d11af9061248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101905753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c710036e4bc7880cd19f1034ac0bd7c7494d6d891233c7e89402f58c039c9b12`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:42:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:42:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:42:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:42:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:42:15 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:42:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:42:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:42:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:42:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618ea09e6ceff67a5c8e56b8e1e259fa0154f2324b5b2c540ed8db7d4a4a931d`  
		Last Modified: Fri, 25 Sep 2026 22:42:44 GMT  
		Size: 11.5 MB (11470082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58985af667e6e24dbbb1eda7f81c328f2999383dfd1f3be1b42d4b7486babbaf`  
		Last Modified: Fri, 25 Sep 2026 22:42:45 GMT  
		Size: 62.2 MB (62209146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86e657a99e41f7d355985e0a48c83780160cec2d62b67832b7c6900cc72185f`  
		Last Modified: Fri, 25 Sep 2026 22:42:44 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0d23a41b22c375a356b8aa2732963dc7b8d1498832f619cfc041892356405e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3654509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec640ab14ab05a7ca6415ab5999caead2c5f2c557377251a29d029bc9e15b01b`

```dockerfile
```

-	Layers:
	-	`sha256:56fbbc2a278df53167c1a1f11a5bfb95aa188ef6450311dcc7dd7bb2d2d66527`  
		Last Modified: Fri, 25 Sep 2026 22:42:44 GMT  
		Size: 3.6 MB (3632224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80abfaf044ef5b72804dc5d896d40d86f62fb39b546377e9d63ff0bd62280f6a`  
		Last Modified: Fri, 25 Sep 2026 22:42:43 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.in-toto+json
