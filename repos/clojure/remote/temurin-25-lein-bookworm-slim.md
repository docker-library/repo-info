## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:335fcba8446437be58f9028c83a5a3419abd7fbe5e3fba8a012d0ba1148218fb
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

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:061b7d6b80154a0901a04d0728651122e63adfde01f34e91df48c2d46c6442b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143394734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a340fbf548f1d041f29a69a21b5576d229fc1ffb7d08ecc9283a5db3db36fdf4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:23:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:43 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:23:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:23:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:24:46 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:24:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:24:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32723ca673bd7e783d971599fd4991a8783605dc4d77c434419b34642c2f5e54`  
		Last Modified: Wed, 05 Aug 2026 01:25:05 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e956d23f3d3969f323798c7d89b3c60024b9fe6c622eb8c5fb46fa8be47d7232`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 18.1 MB (18071954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd879c5bf3ac232d75bce0709367b79165e4355fb5007d7300c28d25cb772f2`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d381c6e52d2d80092e963f01d1d8a3c58e5b9be1323d07d7f8def45e5832c67e`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:23e12bf1f4e819401627e0fe96f2d0578c3db2fb8a4da7df3c18dff93fd833bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1bc43cdabcedd5a10a02ea5fae17b6bac990d1362ba3b1bf70e8bb6b9060b42`

```dockerfile
```

-	Layers:
	-	`sha256:7ec95a1fd26c75e8ca958168fe54a63beeb49cfcd52b83f81d407da2b03e6a2c`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 2.7 MB (2700429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6675776296e37d387bac904906f45bba23e989fef22c403c9632559647a4fef7`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:34390e6201e1577e77e8f0eaabeb03350281e58b2f61653f35b3f85a4ad1fdad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142069218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c6262236c26041175564b9f0ae743efe2d4e9ecab710177b18a21aae6a38a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:29:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:29:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:29:53 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:31:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:31:04 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:31:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:31:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e53dc3f88b726adefc15de3fcaf00aa0f643829083e3cbce7813db063cafa05`  
		Last Modified: Wed, 05 Aug 2026 01:31:25 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9099ea4d814fa4091b18b4567419fd05877304c46d7e493791ecd982eb3b1234`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 17.9 MB (17894129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c664ef11dd0eaf8235770d4b731d86fef68f509b029860e1cc5bdec3e90696`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b9612002400614e8302b76cde63a0ec74609b525b6b2e7f717a56eb2b674a2`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4ac72b61bde82acf4455b8dbb0fccc7737a5a04a742790955bc7d5a43fed451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6570f5927db3651e0833006a8d97b8eb628344b9a085baacf2caebf0caa24f0`

```dockerfile
```

-	Layers:
	-	`sha256:7394f7df3adf4b238693ca189d8037d9b2d6b58a6e28ef2555b0b2475b276906`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 2.7 MB (2700065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d1b9e17f3601c4e6c055fb5089fb00903827656618009898bf44000f6b823e`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:778c11fd3fb9da04bb8883c90472d4667fb48d60d0d464444f947aa94a922278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146769454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f5aca181edb1e8298679f0cb019e2daeff63d19e9b251e871c436aba05a239`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:40:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:40:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:40:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:40:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:40:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:40:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:42:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:42:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:42:52 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:42:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:42:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:42:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:42:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef5f95add8086a49ee781789ff77d32cc777d31b32c0ab8f6fb83065e18af09`  
		Last Modified: Wed, 05 Aug 2026 03:43:32 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994be8298ef082e63e7263a2339cf558e6c478ad4cb246771f1ca34e5f35bd8b`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 18.3 MB (18263444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dd1dfb0230d88c64c8f9df8e2abd22ecb3118250ea4bb8d54a1506a769b54d`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbb0aab291085402287174a790d21f4a314c4ff3e15d8044c2717b1f0cd928a`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6989cae421890dbda4b5c954ad1b3bb6a89f346ef4621cd4a6020845e7a367f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abcf3ef2491592618fe2da26488c64a3ea430d45b6332bab7a941e1aacba971`

```dockerfile
```

-	Layers:
	-	`sha256:d709294a57e20129cf375a073f4ae34f213859602f856113d1d401b9d77420eb`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 2.7 MB (2685586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8882df9c277c1169c74e42c327988ee074cfd6fd3520755249000d0881e870b7`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0b9c4a1481d266f5ac2d317318f1c94ecf1ffcc9c8d886191336e9db5b40001d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137549028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d7a01d2b6614f14cb834115f7c137d75a1e7f4d23930fffa93b7f72e032b48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:41 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b014273c8a26e1b2e8dc8b06f2f384e93654795408d41cf1438dfacf76c148`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 17.7 MB (17724739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb535136e15de24ee9ac140907e414a8cab2c339de1883620fa31de27643461b`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fef8f0b77dd2711f03f22f8bf29948d829312655c8132e0bfb60c400e6a9233`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:72f560720b85a5cdf899b561f1afff7fc2d91b44fbb856a5cf4952d50c7fa5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2441cd23f44af67eca126669be703afc1eafa05f2135e80faeba2147cc8c39b3`

```dockerfile
```

-	Layers:
	-	`sha256:0ef63fc7b7e75cc5093b927894e56631add80dc812fffe14df0e7e9776dc17cd`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 2.7 MB (2676805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e77373a2933cbe01b612c651d1eb8b3e26066129c5ef3e49f04e2b1af4177`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
