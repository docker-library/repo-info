## `clojure:temurin-21-lein-2.13.0-alpine`

```console
$ docker pull clojure@sha256:e5e12db31093d12a4e607dbd2fe6138561274b7892ab24132ad2f3a7a7049d3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:67e61c79bb38fbade6d7052ba156c394ceb2c166fd778249dd8c55e89f732f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.3 MB (209268169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94d20f5a84f24b3174496323de81ab6e34e176c98cb63a6ec644bd93289b14`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:20 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:21 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:09:33 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:09:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:09:33 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:10:15 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:10:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:10:15 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:10:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:10:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:10:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:10:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553e9dc39faa28c406ca51894ba199ff6bb3b22473cd414e47916c577731a6c`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 23.9 MB (23926088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a195ad86f155892445d5e36c8a99d93847124fca0566c0d9aea75302f83aa7`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 158.6 MB (158645654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c77954bc52b873dae2ea65818333181fae687b04f4d446d641cce7af9ef1e0`  
		Last Modified: Fri, 20 Nov 2026 17:43:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2083867428de48fb2704e6f6b06bc45bdf14616ca51f6e4126e97307644e77`  
		Last Modified: Fri, 20 Nov 2026 17:43:36 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80cfe34df59af76110a40a25d579fd83d7a49c6f8285644378d45c560592064`  
		Last Modified: Fri, 20 Nov 2026 18:10:25 GMT  
		Size: 18.3 MB (18324040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15a10a615106079c9722616e87bf564bedd6004e70dc12d2fbcaaff39034bdf`  
		Last Modified: Fri, 20 Nov 2026 18:10:24 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2ec55a35474867fd3a98f36b2675b1551e1c21b27908c9444e0bfb347e24c0`  
		Last Modified: Fri, 20 Nov 2026 18:10:24 GMT  
		Size: 906.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:417996d08be4d65f9698d2169c447a2b6f31b1292debea328fb13790ed64c750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1084421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c48d715306ccd25d59e5c19444e2aba1bb809db7327d65fca5243c1471224bb`

```dockerfile
```

-	Layers:
	-	`sha256:5578a100c897c3b28313993d3fd472c6be1e5b2bd56599c68a8b2a116359b45f`  
		Last Modified: Fri, 20 Nov 2026 18:10:24 GMT  
		Size: 1.1 MB (1067020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57072722c0f048951efdcf43da0610a303444ab48f426ab7e7d23956565cf790`  
		Last Modified: Fri, 20 Nov 2026 18:10:24 GMT  
		Size: 17.4 KB (17401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9f5bdb0e9961ec0321869e6c87439611a2ac2398f9c73c88bbc08aef26202864
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207971949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c44761f004fe55b484824021edcd7d07e51ff63904263d6e549c267b92f72ee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:01 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:01 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:10 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:57:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:57:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:57:38 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:58:20 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:58:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:58:20 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:58:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:58:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:58:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:58:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebb5a27895d819fb8c7048738783579533b007cc3067cdea131668223169365`  
		Last Modified: Fri, 20 Nov 2026 17:43:27 GMT  
		Size: 24.2 MB (24199441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a0fd394024968ba5926b9c8565c02e838a31e6447eb81df4e968cd1f1a8ece`  
		Last Modified: Fri, 20 Nov 2026 17:43:29 GMT  
		Size: 156.7 MB (156670199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea763b6fa0abdb237527a5910a3026790f7b2de1c544f3422c8aa36fa4273869`  
		Last Modified: Fri, 20 Nov 2026 17:43:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6dc83df0e0b58abcfbf77f7fea2cf2c49510f03add0e719cec049c2175a1ea`  
		Last Modified: Fri, 20 Nov 2026 17:43:26 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64adf5bcfea955102729864e5b954829a27d72d265467769936d4a758f23a72`  
		Last Modified: Fri, 20 Nov 2026 17:58:30 GMT  
		Size: 18.4 MB (18392976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc9fc77c2c849084012f0887e832e5fa12307d826f1129636954c23cc99126a`  
		Last Modified: Fri, 20 Nov 2026 17:58:30 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809430e3627f5a772a975e41766df6fb7f73a73f32f42cd2a5f0428ea66498b7`  
		Last Modified: Fri, 20 Nov 2026 17:58:29 GMT  
		Size: 906.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:cdc67ea2b295870ad518299af6c85c31baaa002f25cbea28d11b868fb2b7d068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1233856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f688fefb810eb89a5b14264839caea06d7155d869d117dc341f2c2b53ff080`

```dockerfile
```

-	Layers:
	-	`sha256:6dd653fd1cec2a27cb72187bed5ba709b6b299b330ea5f3283a99a2037361a5b`  
		Last Modified: Fri, 20 Nov 2026 17:58:29 GMT  
		Size: 1.2 MB (1216360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dabe9314aa70623767a2c672b3b89d7536f9a2cb82d48114ec4a02f9164c5237`  
		Last Modified: Fri, 20 Nov 2026 17:58:29 GMT  
		Size: 17.5 KB (17496 bytes)  
		MIME: application/vnd.in-toto+json
