## `clojure:temurin-26-tools-deps-1.12.6.1673-noble`

```console
$ docker pull clojure@sha256:96c0f89b39269a5a099a6cb509e91743f898e2b3ef999423d91977cddadd82de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-noble` - linux; amd64

```console
$ docker pull clojure@sha256:3c90b76c6595a6d7426c529eb6111ba81ec26e56b3d173e16d7b481bf85491f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199673428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2feb7324a8dca8282461008dcf19fddbc95c384d855a738f70474a5e5949b6f4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:51 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:27:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:27:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:09 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:04:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:20 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:04:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab14aacb1635122e6dbe54c4a15d58dc812d7457a43cc07db84facc89f43f0d7`  
		Last Modified: Fri, 21 Aug 2026 18:27:26 GMT  
		Size: 17.4 MB (17422489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a7b2a433df604342d940b09d2e559338d1206138e7ebf3dcbe159253294ff6`  
		Last Modified: Fri, 21 Aug 2026 18:27:27 GMT  
		Size: 94.7 MB (94695831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48d7b8e02547908caf427b938834fedd4dccf6ff20643717fa5ea7256950e5c`  
		Last Modified: Fri, 21 Aug 2026 18:27:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54977de8033eba18994ed55881d0056b2d7194c8f03b6683271a0b60a6325a5`  
		Last Modified: Fri, 04 Sep 2026 00:05:01 GMT  
		Size: 57.8 MB (57798761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39936da8de0cfd57f8273725216e91fab221bb1adb6c6f0fc893d023299d569c`  
		Last Modified: Fri, 04 Sep 2026 00:04:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf4b9c141511bae258ac44bab0379106329392525304f3700517a374faafb1e`  
		Last Modified: Fri, 04 Sep 2026 00:04:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:054e85c676184aa5080d006a2dec1ceffd9bd18ced68e3f2eb1af2f80fb82dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5788165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce89ecb25fcfa8e0819fa60fd8e299b39280cafe4b52290409f7e9622e5f9649`

```dockerfile
```

-	Layers:
	-	`sha256:f6ed973f4579b965f04368d339d24f77c6abce72a64fd7e2bcf4c21d13f9bdc3`  
		Last Modified: Fri, 04 Sep 2026 00:05:00 GMT  
		Size: 5.8 MB (5772631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22a5f94c6621f5db57654aafe290380567fc05ecc4731c7a604a6efedab7a9f2`  
		Last Modified: Fri, 04 Sep 2026 00:04:59 GMT  
		Size: 15.5 KB (15534 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6607951e171d42439f50012a9b0599a1c47da0b6ae9beb43203a87b0f432382d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198942817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181511efbe01acb04ecc002f900bccc59eb33a3422c709f1c33bf2a15dff3fa1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:29:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:29:53 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:30:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:30:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:30:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:30:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:30:11 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:08:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:46 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:09:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:09:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:09:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:09:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:09:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b5428bd4d4b2d294370e080b469059daecc3c985f20471fd92710c18bd7189`  
		Last Modified: Fri, 21 Aug 2026 18:30:29 GMT  
		Size: 18.6 MB (18610179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618cbaa8a855d1ad3603cf811aa999fc385a446d9d6abc436fdfba2a665cc523`  
		Last Modified: Fri, 21 Aug 2026 18:30:30 GMT  
		Size: 93.7 MB (93675572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1086db72eff7d94b288f0d1bf9eb04d7585ad58aece3d51cf969ea0d77bca281`  
		Last Modified: Fri, 21 Aug 2026 18:30:28 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1160acaad3169121cc32d760a69e63583bc4ea118d2abe838dcb71d477f9263`  
		Last Modified: Fri, 04 Sep 2026 00:09:23 GMT  
		Size: 57.8 MB (57766290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fddf6ae5115eaa7e20027bdeed5cc4526514ae194ee48af3e731592117f43cb`  
		Last Modified: Fri, 04 Sep 2026 00:09:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b12c514963999fec9e8fa5e0b0b69ecbd0536b70f69dab1cddc8433d6dd27c`  
		Last Modified: Fri, 04 Sep 2026 00:09:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:c205f97a67d859c83bb2d56ad6227e0e127196697096123433db075b581fe60d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81eddad70a8147f757f738622071f3334785db06eec883980ec575aac3995bcc`

```dockerfile
```

-	Layers:
	-	`sha256:d93c0a6abe90770c81d26eef91440cf6e3b9529f13ed64165d3ad15488a487e0`  
		Last Modified: Fri, 04 Sep 2026 00:09:22 GMT  
		Size: 5.9 MB (5910248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7486689f3b0682d8e5430be5a246d423a902bef8981ec3da41d781f94355e99b`  
		Last Modified: Fri, 04 Sep 2026 00:09:21 GMT  
		Size: 15.6 KB (15626 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:01f0ab7ba0ec9542fb55678884f6aa74170602213aea4cb6c65fe44dfe6713d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208361001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee8c9c704e97e11fd20545bbfe93c8ae8bc6d4eb65f132dfab54f0619172e43`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:17:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:17:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:17:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:17:19 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 20:50:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        riscv64)          ESUM='b247d7cb807d6b2be85c7e7bd2ba2c968cf7cbe2533a63689276c03ce51dc8d4';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:50:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:50:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:50:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:50:22 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:33:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:33:04 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:33:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:33:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:33:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:33:48 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:33:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c87aa8f65b843a859d60157ae73c331b0e1d9e5a2e44cbfb0dae52866a2e7aa`  
		Last Modified: Wed, 19 Aug 2026 21:18:30 GMT  
		Size: 17.3 MB (17288209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28192a77600d602beea42c7de8bbb944488d7883f06b4dbf1c0ec9a2cb48a012`  
		Last Modified: Fri, 21 Aug 2026 20:50:56 GMT  
		Size: 93.5 MB (93481550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df50817eea44d6faeb1ad03bc076dd3e9863ced942f41da76de295d47b15a02`  
		Last Modified: Fri, 21 Aug 2026 20:50:54 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e285bf6afa260163104f67e16674479d74499e44160e1648aa10ebb4169c7ba8`  
		Last Modified: Fri, 04 Sep 2026 00:34:21 GMT  
		Size: 63.3 MB (63276506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8e8169c835411e99df45601beba318f92c112e01740fa93aa6ce9bb1379f08`  
		Last Modified: Fri, 04 Sep 2026 00:34:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dfcfdea1baf4f489b83b15bccb62770bffb63d7ae9bd4d23d0dad69e281ce3`  
		Last Modified: Fri, 04 Sep 2026 00:34:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:8a339f7dbc9409d0e51720de4f5c36f85ec66c0feeca87ef6f33b79c9689e3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5823024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0088be6763277e81192634a45ce3cb5bba4ed0b4615b11ca76f30bc11e09dc1`

```dockerfile
```

-	Layers:
	-	`sha256:be6c9ebce6c1d5685f7ffa25f20cd75302bf4107d487bea778fc72fa703f5eec`  
		Last Modified: Fri, 04 Sep 2026 00:34:19 GMT  
		Size: 5.8 MB (5807453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba371dae36e8b3fbb75d12e9dc5c9f0c77cea7b937b4b62a007a439c9f40ff7f`  
		Last Modified: Fri, 04 Sep 2026 00:34:19 GMT  
		Size: 15.6 KB (15571 bytes)  
		MIME: application/vnd.in-toto+json
