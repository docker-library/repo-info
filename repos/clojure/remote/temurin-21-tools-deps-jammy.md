## `clojure:temurin-21-tools-deps-jammy`

```console
$ docker pull clojure@sha256:1265521d4ac4a8bec0223c0224c1987c7028e13d3fe67b0013031523ebc04f3b
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

### `clojure:temurin-21-tools-deps-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:12fd05b6f8abfbdf9035a94db3038d2353a2a3d938c360c0d8bcbbd67de50fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256439892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca20da7331ca78e92d04e543adcf98bd956fa89ae37428fc19ff1d1a9e6cbfdd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Thu, 02 Jul 2026 02:21:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:27 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:21:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:21:36 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:53:35 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:35 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:53:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc476a9c60c3a1864211675cb1e0a2dfb07aaea1f165707044e73cb625705dce`  
		Last Modified: Thu, 02 Jul 2026 02:21:55 GMT  
		Size: 20.7 MB (20660951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4350f7c93c9df3fec7145a3fa8b368b1518d60f60ed3e5f0a1a3f3d3dbda0c88`  
		Last Modified: Thu, 02 Jul 2026 02:21:59 GMT  
		Size: 158.2 MB (158171504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70864aab0bd87eb0d83a61ceb105adc13512311025b9cbf9a374a6e0b5b9562`  
		Last Modified: Thu, 02 Jul 2026 02:21:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f8119bbbf2918b66e1c5ee8e61d866a75c8219c49918ba173724c4e9a3ec46`  
		Last Modified: Thu, 02 Jul 2026 02:21:53 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0596010605c41481fd96dfb48f3e50c9fef1d30505f30b26327ad36f2081846`  
		Last Modified: Thu, 02 Jul 2026 05:54:05 GMT  
		Size: 47.9 MB (47865066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55de1cff2b9e5bff1a405f8c432c06d1576477abc7780ffbb0e106be8f51539`  
		Last Modified: Thu, 02 Jul 2026 05:54:03 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa6f847e5912b1523b19c01590f785d152805bb78d48cbd80383642cd10e100`  
		Last Modified: Thu, 02 Jul 2026 05:54:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:bce070fc2cbe9c053017f80f73538b5ddbb66061826ecbf246b8eadf9b37c307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6462124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdfb563a824caa9c3a5dcae5f6a3aa03b64facc52473d49e81129e0bb343c75`

```dockerfile
```

-	Layers:
	-	`sha256:3a9c5851741a41608b8414fce2b037341f3fe8ecbee114d2da073b0c61f49e55`  
		Last Modified: Thu, 02 Jul 2026 05:54:04 GMT  
		Size: 6.4 MB (6446580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f61ee34d15268980b53eb1ae3a6491670962027555691220216dc46f6c8bd8c1`  
		Last Modified: Thu, 02 Jul 2026 05:54:03 GMT  
		Size: 15.5 KB (15544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aa41312438ae92f3ced370998bb543473060156931a693eaec7c3bf831a52f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (254007611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec48a67d180176d89e8c80fb34f8250ea229cfdc92948fa4bbc5398f1767701`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Thu, 02 Jul 2026 02:20:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:32 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:20:42 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:53:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:54:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a6f3c2ffdfad972af908ec44bc76e2327e2d7d5cdcd43a5459c9e42657e056`  
		Last Modified: Thu, 02 Jul 2026 02:21:01 GMT  
		Size: 22.1 MB (22069186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdd04eb7581eb1431fa2674fb53e61a605fd3fb137723aff4d493d05395cbd5`  
		Last Modified: Thu, 02 Jul 2026 02:21:03 GMT  
		Size: 156.5 MB (156473159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5d79dfb5975b1c5f63a3444d14841e99a53cb39dd174293ea2085312cbd940`  
		Last Modified: Thu, 02 Jul 2026 02:20:59 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3afc26fc665b0d5f1259687ba435cc7377d12d108e3f0e5c1b6c608de66a881`  
		Last Modified: Thu, 02 Jul 2026 02:21:00 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f3e1aa54160c87842b22fd1875315b8822829df93550e07c7de49409d7e7eb`  
		Last Modified: Thu, 02 Jul 2026 05:54:30 GMT  
		Size: 47.8 MB (47848590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ebdc443a4eb4c6a7d710cdf6da8a111b1ff95960aedf04dd4744b0eec6dc76`  
		Last Modified: Thu, 02 Jul 2026 05:54:28 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e30dc76c7318126ffe299d8f055f98a1856738da797cfd1775da432e495eafe`  
		Last Modified: Thu, 02 Jul 2026 05:54:28 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:b3f19540522effe54c1d384221b1aec0e393b013f9cf30db5128e0a51023d36c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6563785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc86717b8a7ca7f2601d1a92fe352210d435a02df682f8b9b7730d0b7f903cb`

```dockerfile
```

-	Layers:
	-	`sha256:fb222aeb4b088643662e7a553159d3af4200df6ea558d39c94e752fb08c00c8e`  
		Last Modified: Thu, 02 Jul 2026 05:54:28 GMT  
		Size: 6.5 MB (6548148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d475dc3ba2fbcc57f62fbfc9463616cae8e258b6c103d36e9536cceaa46dbe0`  
		Last Modified: Thu, 02 Jul 2026 05:54:27 GMT  
		Size: 15.6 KB (15637 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:499e257cc4f8e241ecad50069bfd10ded8f3ecd966a724602b2001bc5c619a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267348307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5feb4fe8e6927a167bcb21bc6d206c0ff8d00055d0a4ec7482af2d0e0561d4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Thu, 02 Jul 2026 02:19:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:19:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:19:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:19:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:19:46 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:22:27 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 07:22:49 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:22:49 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 07:31:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:31:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:31:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:31:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7039d2572893e100706c6075b7b594a2233b3a67c6b3919f59a1ad965427af72`  
		Last Modified: Thu, 02 Jul 2026 02:20:32 GMT  
		Size: 22.5 MB (22541572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd07fc412f29351af79a40a3d1b188fd9d14f96add48f3c8c7cb5efe47b0b22`  
		Last Modified: Thu, 02 Jul 2026 02:23:05 GMT  
		Size: 158.3 MB (158345592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a3d4b29add82ce25056b5e09ad9bc0d16a31f4386970844ab1027344a37d67`  
		Last Modified: Thu, 02 Jul 2026 02:23:00 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cae4961604cfef8bfbfcea01c86c99be86314cbaf9fbbaa23887dd447119024`  
		Last Modified: Thu, 02 Jul 2026 02:23:00 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74fe685f468cd6efc6a6fb8eca41659c2e992cdf1208a969f60112c612bbe70`  
		Last Modified: Thu, 02 Jul 2026 07:32:03 GMT  
		Size: 51.8 MB (51815784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9889f5c2557f7cddb0781eed71005b8978ca1335454c75f0860be49bb7bd45a8`  
		Last Modified: Thu, 02 Jul 2026 07:32:01 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ad1f166a6955877b1e16f2402cd0cb0481fadb8c62e09d3442158dd384b3a9`  
		Last Modified: Thu, 02 Jul 2026 07:32:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:ed1fc6bca2cb780d916f510555bf4670be05201233791b7d6fa7c9a82e8a9101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6492774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34591f8414692c4d1b0985bf23e2319347852ae281270ed96f4dde1ce0388f0c`

```dockerfile
```

-	Layers:
	-	`sha256:cf0b1815dad20fafa15d7ad8abffc6aec68ec672a2388e7c47afb1b53f601d0a`  
		Last Modified: Thu, 02 Jul 2026 07:32:01 GMT  
		Size: 6.5 MB (6477193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc33d3340defe8c5893a40ed777021adb552096e0823f91464cd0521a6e51789`  
		Last Modified: Thu, 02 Jul 2026 07:32:01 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-jammy` - linux; s390x

```console
$ docker pull clojure@sha256:54da514f55622b084b30d56fcdb82000ac9a7594c43817271fbd0e6f68b5934e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243832610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde71e06dacd42afd889d2f19d4de7ea875890f90c205b7c91884aa744a9c950`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:12:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:12:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:00 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:12:00 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:13:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:13:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:13:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:13:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:13:33 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:55:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:55:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f187e16f938de33bdb2001f9f6c9a1ed4497f7232dba214d585bee8fade160`  
		Last Modified: Thu, 02 Jul 2026 02:12:31 GMT  
		Size: 20.4 MB (20371012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62c844b7dc437c4062161566d852654c8f18484aff29d48792ea09b5fb8be0b`  
		Last Modified: Thu, 02 Jul 2026 02:13:59 GMT  
		Size: 147.4 MB (147398713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7382eeb83308f2f6f941d7cc0dea6eb41f9a2fc2a900c35e2128ae94dd2149`  
		Last Modified: Thu, 02 Jul 2026 02:13:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5250d6a2465b062af811f389462220434b7be6c7c27623c52c9f1e9c7dedcf5b`  
		Last Modified: Thu, 02 Jul 2026 02:13:57 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abb720dd9e1c45fc6c12fa2b9ddc7434d4142c813e679d607f3ea093bf2ae51`  
		Last Modified: Thu, 02 Jul 2026 05:55:30 GMT  
		Size: 47.9 MB (47855271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe79e7811fb3fee8a0b5d469f419c6362d4b17fb62dcd908d6c0ca65c550b04c`  
		Last Modified: Thu, 02 Jul 2026 05:55:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1404b8335d046b72d09536f90e9d9fa87162ebf9ba54d7c4e734ee03930a0f`  
		Last Modified: Thu, 02 Jul 2026 05:55:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:60285cd5339b7ef6dd8b12b16ccb61e6cc8fc553ccf33ded44ef471ae94286b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6385851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c866589cbc3de3321128ddd11e0729098093549349a17025284eef0f60ec07`

```dockerfile
```

-	Layers:
	-	`sha256:975cae1a2202b33951a705a14a701af1ffde29bbfbe8884b53405b5c55e6910f`  
		Last Modified: Thu, 02 Jul 2026 05:55:29 GMT  
		Size: 6.4 MB (6370307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1abda73246d805906336ad90e486710316b5e8753546051dbc0697fcc0c50675`  
		Last Modified: Thu, 02 Jul 2026 05:55:29 GMT  
		Size: 15.5 KB (15544 bytes)  
		MIME: application/vnd.in-toto+json
