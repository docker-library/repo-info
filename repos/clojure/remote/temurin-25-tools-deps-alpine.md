## `clojure:temurin-25-tools-deps-alpine`

```console
$ docker pull clojure@sha256:07a602745633d74d4aad7178320b2477ab4908ae712b8d4e920c5fbb7ec4b08b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:8b16985bc0827bdb88da4131936863aca1d00f57e14424a0f8ec3a24f27324a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138853476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01716e37550512eccd3c605dabc48662a030d2f192e7ed98e41eeb6ba3188bc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:39:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:39:59 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:45:17 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:45:17 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:45:21 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 17:45:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:45:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:45:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:45:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30918d682cf0c10504ef0f5606c9b1b42d83c0405c5a28904592b4d09b7dfdfd`  
		Last Modified: Fri, 20 Nov 2026 17:40:14 GMT  
		Size: 16.8 MB (16849365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb679e69b68daea08e52fdb38a131144a2baf615a75287e4d992189d3139170`  
		Last Modified: Fri, 20 Nov 2026 17:40:16 GMT  
		Size: 91.7 MB (91681090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f577ef1593f1935f76416e7596f00093b7c2172d424a7d684346585989387ff3`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04a540de790f34940a32c248ce1094ce407a54943df8a8aad72e787b2e62057`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accadea0b3198ab31fc4683dbf104c4e05bb94effae311aa958b463e67964c1d`  
		Last Modified: Fri, 20 Nov 2026 17:45:30 GMT  
		Size: 26.5 MB (26465201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b13ca4c54257caed7acb8ae4642eb43c840d910651c111ce779d81181348176`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb52c9b953a7068a569e3d8757eb08988f5bd718580ac413972f8cf898019e2`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 904.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:c14b950abcdaecc1f97c37ed78ec08794e118bdb135d92880540491e30776e5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1201523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86c14428f98723aa17ade7165870937a5731ded192ff9519fee7693a338e48b`

```dockerfile
```

-	Layers:
	-	`sha256:123357d1343ca29634bce875ebc22b38fcd5cc1970fc7ebcc2f96bc9e3f5d2c8`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 1.2 MB (1186097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b123f9a06add1240579be88e8298fe570aaf6fde94412a9e402d8de09c14c932`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 15.4 KB (15426 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:edb170f6693d81f423cfc62ba731bcd5d21d13ed3a8d44f331364cf86b187414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138591143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a733c21f815694321f9c84bf4f122148c14f594cc344440c0fdb62c2542b6d74`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:54 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:40:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:40:02 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:46:05 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:46:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:46:09 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 17:46:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:46:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:46:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:46:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487a64cbb3fbfe7cba72e5ed235a24dbaaec5e13814e4c8f4cefb12810568180`  
		Last Modified: Fri, 20 Nov 2026 17:40:18 GMT  
		Size: 17.2 MB (17204343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc4ccb772395b1288f8493668870b37b7fcf6f51768ce8f476628696a4f7799`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 90.6 MB (90573341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12413d418d48fb1f36d40adf9960a08a6433553870d93a7c0fa4761640e77191`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3e8556fe1865e4a299e4b903c8f3f15d32531fd8224cfc9f7843adbed97406`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e9890cfabbd6900ffa694bec3f57eb226c31c099eca7bddffedc7262a0edb7`  
		Last Modified: Fri, 20 Nov 2026 17:46:18 GMT  
		Size: 26.6 MB (26618714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687df7072304886665f543641c8397a2750ebfaa37ac7933f09a70ecdfca3637`  
		Last Modified: Fri, 20 Nov 2026 17:46:17 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e310ad31fe448e4beffa90a5ce54918c03c64364ef26653eb3dc067fcedb7b97`  
		Last Modified: Fri, 20 Nov 2026 17:46:17 GMT  
		Size: 905.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:b366c33ecb75491840d971ee363ce8af284c70c3169af4ee6252f52181bc102c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1350964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0383eda4df149a5b506ff5f3d9f39169c48698b6f71ae3a6c6157300650a080`

```dockerfile
```

-	Layers:
	-	`sha256:1358fd0d6b87111dda6a03df304683312cfbea0dc240d2251ad4854f82688a48`  
		Last Modified: Fri, 20 Nov 2026 17:46:17 GMT  
		Size: 1.3 MB (1335446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3662c4fa5e926a3d5e253b19d6c0131288528a8bb8f2eb57cf632474f0e5d5b9`  
		Last Modified: Fri, 20 Nov 2026 17:46:17 GMT  
		Size: 15.5 KB (15518 bytes)  
		MIME: application/vnd.in-toto+json
