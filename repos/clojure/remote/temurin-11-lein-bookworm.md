## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:97aea93ab5f4426ca531281e06c2b7a7beb302752f56b6f3a39274b833b21701
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

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c59307ebaaa01b5c06949a094bd92eeb3fa93bfd3905ed6750c470f558ff754a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219017200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9684483b574c30fa887be54b002793ab4a6efec3cdbe3d13e00b64c7f5663205`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:16:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:16:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:16:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:16:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:16:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:16:00 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:17:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:17:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:17:04 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:17:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:17:06 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393d238c82afb1818ce3b1ca09eec66d088f5d1ddf6674fe0a1ba93a5c637cdc`  
		Last Modified: Tue, 14 Jul 2026 02:17:26 GMT  
		Size: 145.9 MB (145886184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de44d8450079151281170ff77cb1ddc4fcf4e6abca1b15de704de855cf6b9957`  
		Last Modified: Tue, 14 Jul 2026 02:17:24 GMT  
		Size: 20.1 MB (20118360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7592496fc5383a7d08da1f1ccc4561e0d03e99c4d9eb46bccb6fcad2e88dd6b2`  
		Last Modified: Tue, 14 Jul 2026 02:17:23 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:999254ceffd23f1fc6290b911b23ebbf4ede00e726fce21f1bf046917a68e35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368e2d38916a8dbc00f97c23198d24f531c8460ffbeeff4a9f12431ac7c9304c`

```dockerfile
```

-	Layers:
	-	`sha256:4576fc102a572a83dee3f8190300d988f1633e23dd003d8c924c4591dbf7d2ce`  
		Last Modified: Tue, 14 Jul 2026 02:17:23 GMT  
		Size: 4.3 MB (4303570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4d17d4d84423a01e8835170210da3b82475d5a04e3ca01d26f75cf086c6b9a2`  
		Last Modified: Tue, 14 Jul 2026 02:17:22 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a59db4793ca76f427b562b5bbd991f830293d5f705c1ae218031e17a8e7c800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215431666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4206ae229bf819def4d2a713b6c369201b2189f8d1c363aef6f0c59d5c7eee95`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:23:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:20 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:28 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469f768e7b2105fc3024fb2ef16b890abed9e77944af583dd2269c51f8867a42`  
		Last Modified: Tue, 14 Jul 2026 02:24:51 GMT  
		Size: 142.6 MB (142582173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd207a0a2d7643cf4fb68be2c86c3e7504eb1e5cb593eaf6ff1fb12d0ae9b98`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 20.0 MB (19950539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e7aaf6ecc033f3c0371716ba213bb8214c1be3cc5413eb5cd4ad94fc657b6f`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:10f8704b6fa738e0711b8f120b8ea8d98891726cc938a0cf62cc2b2110de3d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18bedbeefc51e5450b9ae80398b69a5b49da3aac8238a0583ed567d0cc7ee4bc`

```dockerfile
```

-	Layers:
	-	`sha256:31827104b8eb93580f358c03257fb4be20cdf6eb6a72c92015fd36fc45bafa36`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 4.3 MB (4303803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a633c825cea0cef19139447ee176ee5eedbb27f382c0654856b01f6f49c9b7`  
		Last Modified: Tue, 14 Jul 2026 02:24:47 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ba1d3fe016bf526f28fd45da85c3ee56333735fcdb8c9f83e2eec00ef53f4dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210304404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53b9e9028d6c07681e370484d539953e23c745d1e990cbb67fb8d6932019ff6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:51:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:51:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:51:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:51:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:51:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:51:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:53:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:53:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:53:42 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:53:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:53:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299e65171f72e6722fdd5ad9801a6dff8d9c2278fb4ba6fa0faffe6c5ecc7f05`  
		Last Modified: Thu, 02 Jul 2026 06:54:25 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e33e54d64795fb84c8c6de46c05bf9b05d81ae01cd8e89035ab169caa20a65`  
		Last Modified: Thu, 02 Jul 2026 06:54:22 GMT  
		Size: 20.3 MB (20332165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d335c32104f6f53414c8d8944c10f4329705944857ce6f899717bbef226cb9`  
		Last Modified: Thu, 02 Jul 2026 06:54:21 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1d69e14cacfc3618d0b424dacd7bcb265385e5951985bd8016174502458b8366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0bff7d7ec0820a8e79e49dfa62c8a248880d9220b51a1519a8b968125e8479`

```dockerfile
```

-	Layers:
	-	`sha256:34f8e184c9d177cc7817aff30a878b5b063e29937a300e20b125edb99e8a7b42`  
		Last Modified: Thu, 02 Jul 2026 06:54:21 GMT  
		Size: 4.3 MB (4304780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab5d8e178f90e2739a770ff87744a007d93d63f7dd8237cfee1a77a2a524b5b`  
		Last Modified: Thu, 02 Jul 2026 06:54:20 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ac8fa342596e63b330ad37e4c99dc0ac700e10317c5ddaf29727fbe3afcce74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198094210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d044b23c979ceba7512158fd55622bc67f4ec07b07655f942054c6104eb4f4b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:24:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:24:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:24:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:24:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:24:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:24:39 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:25:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:25:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:25:44 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:25:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:25:46 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4e9fc4c2aa9d6ce8a2f8b7a8c543880b7e386e81bc65ed49ffa9e01f11666f`  
		Last Modified: Tue, 14 Jul 2026 04:26:13 GMT  
		Size: 126.7 MB (126651543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d981af0e4d68e870bb42670c2635d938cea36bdf60ef33cc6cfa0739eafbfe41`  
		Last Modified: Tue, 14 Jul 2026 04:26:10 GMT  
		Size: 19.8 MB (19770139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51609e4be288621126f2b411b2d42055cfb048c8ae123ef86a0773bf9db489`  
		Last Modified: Tue, 14 Jul 2026 04:26:10 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7bfbcef677d0456ec437220ef3dceffe160a918098ac50fdc187727dd73b0117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12be832742a568f1da757579619ef681c92f729c290fead523347a55aa84c6bc`

```dockerfile
```

-	Layers:
	-	`sha256:96b121a0a3f30ff434742c36a395ab42793db2fb61ead7dc4501738f43152337`  
		Last Modified: Tue, 14 Jul 2026 04:26:10 GMT  
		Size: 4.3 MB (4295388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:144a9ce3269be3d44f058f42ccb4daf044a488923354d214325f32cdc18a7040`  
		Last Modified: Tue, 14 Jul 2026 04:26:10 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json
