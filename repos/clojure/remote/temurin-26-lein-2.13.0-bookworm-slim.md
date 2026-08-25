## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:47592ae3b452999cc1d6b1a1ba518f0b5554091d1fc4dbb23e4df46f3144336e
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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e28d8d331e2c31808db2d4fcf4493e92a4e9b73c96b0f118822d15d00b643973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145384745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accc15a4b05ab12d0a2a5763477a27849d7d881d77f57d8d90f4fbe3346b2c54`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:27 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:34 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935b4f08b7dc4e24f49a3f97987c8fe09f7287aacbba395fb0d3d8eadedcfe4b`  
		Last Modified: Tue, 25 Aug 2026 01:33:54 GMT  
		Size: 94.6 MB (94563773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a30c8ee8caaf1b69aebfb79243fe4521d94567a36988cc829702696d9f56b94`  
		Last Modified: Tue, 25 Aug 2026 01:33:53 GMT  
		Size: 18.1 MB (18072689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebe3e88272a9f69e9ce48abba56b07abcaafd725e24357eb5bc6241d247ac5b`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ee25ab0e7ab8426609e68651b9ded6eb17f13b2b3caf1e7113c5e94a564631`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e9071179a19b57e5360a4ae16630b6123196b1cea162545a8a7403237420614d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8466a8bdb99b87949793b6119aa4e5b00b8a43a03b60fd2053eff9721fae8f76`

```dockerfile
```

-	Layers:
	-	`sha256:34507a9260c8ae4c2278558e33df397f998a4e967c8bbe3740b271cf8a5c5ef7`  
		Last Modified: Tue, 25 Aug 2026 01:33:52 GMT  
		Size: 2.7 MB (2702469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d58f8888f39251b0a6e72c1f9050c8705519a59f7fc24bd346a903f54349ae9`  
		Last Modified: Tue, 25 Aug 2026 01:33:51 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba2ef4e790488f76768302033ae29ae4c2b4325fd3a388b547d48e0f92a8e797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144081165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792063c33393375fde582f260e2c5e8310292d734af005bb1ab9b673147848b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:36:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:36:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:36:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:36:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:36:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:36:49 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:38:00 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:38:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:38:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ae5a84d8a7990a1c501436fec287b9434243fbbda880ec4a783fcba34d64d6`  
		Last Modified: Tue, 25 Aug 2026 01:38:21 GMT  
		Size: 93.5 MB (93541530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a1f47021b5a342bdbe42969e777ce3f9e3fcf9968504c543bd2ebca689cef3`  
		Last Modified: Tue, 25 Aug 2026 01:38:19 GMT  
		Size: 17.9 MB (17906700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e14f57460519971c8d3a78243929667e182f27387cd2b10c41d7f9457b65f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:19 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73cfc89d9bd05aa0bd00d78d7e8badc9a658a483e9aaef8cd200e5beddec0f7`  
		Last Modified: Tue, 25 Aug 2026 01:38:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7e65afd4259b975b690fb99304b1deaf14c0c0229588c08b9d7209222dfce2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa5a82aaf738fbe936361a5941e2a4ce115a194d2d85b9b35b181154cec7323`

```dockerfile
```

-	Layers:
	-	`sha256:7c94dd6b1d7012e43a13ddbf0a7f65c4ae6129c8684f5f2839ce6a5fad7691e2`  
		Last Modified: Tue, 25 Aug 2026 01:38:19 GMT  
		Size: 2.7 MB (2702081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c44f3f40c243f2ea3d73ac283fcb3a48ac26b026e5bd9a45bf95c75713e23255`  
		Last Modified: Tue, 25 Aug 2026 01:38:18 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cddfaefef3b436584c3431203610f27368502a20fbc6bc81ad1fd0eed58e9176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148222400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc794bab6321fa3240abf22f1179a12dba7032f403446149ca2a7781622ee6db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:52:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:52:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:52:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:52:06 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:52:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:52:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:54:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:54:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:54:45 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:54:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:54:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:54:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:54:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ca0caa5081da56b1dc091bf14a53eec581b85261a53d5e1a67aa4279f37d87`  
		Last Modified: Tue, 25 Aug 2026 08:55:36 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6958323703652268e48738f6dcd4a6a1500e1ccba7d51354bbc47da7b55df729`  
		Last Modified: Tue, 25 Aug 2026 08:55:34 GMT  
		Size: 18.3 MB (18279462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf7bd058441911de2c9ac7dd4cd06a8c82c4f0227a6a741f1e64ace0927d33d`  
		Last Modified: Tue, 25 Aug 2026 08:55:34 GMT  
		Size: 4.5 MB (4515246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86206a1c42127f974aae1a145822724ddc0a40743e56584102d9e4d03b846c5`  
		Last Modified: Tue, 25 Aug 2026 08:55:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f6f76089a4cfc1ca4e644b98cc1c0bd064b9579c6c6a4c2ff6bca2fe01630e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46dfd6ad273458e23438b697732bfb744babb17d1d6d48ce4a72dd91538a6716`

```dockerfile
```

-	Layers:
	-	`sha256:9d441195085c5e740e875efa4ac758886ede9be34d6973cc9a99c75879687f98`  
		Last Modified: Tue, 25 Aug 2026 08:55:34 GMT  
		Size: 2.7 MB (2688238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:109021b417f4288a9b37086d1b4bdf059991c7bd18b940a1d098f892805a14ad`  
		Last Modified: Tue, 25 Aug 2026 08:55:33 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:d67eed4f424e351e624ed60883c9ee10a6106aaa79da2605d1e231fe594a9129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fc4bbd070c27a08e6a64c38e99cba6c7207c0f51da92eff983bd856350d940`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:05:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:05:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:05:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:06:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:06:16 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:06:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036c1c2293a8c00db9584c9c37e69e7c0dd3e86f95cdbf4098831ad891c4ce7a`  
		Last Modified: Tue, 04 Aug 2026 03:06:41 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8030d6075021958871fcbcfa0174c32300bf132be925b4d5f969968ab0fa0dc9`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.7 MB (17724818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b37166f7cc8d4ae3e59bdf14a1a4853422104c4b5b775d96798e30882be6962`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f56abdd71c14774276b7ae16b4d0528ea1f70d79957c92784be9dc3cd1c3f1`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a4df52dc2e73c69124644139bca582c4042f7e7952429492cbbdd17522f8454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f04a37896152f8b4bc29e3b50270daa55dce16074aa4626666ea72178c918a`

```dockerfile
```

-	Layers:
	-	`sha256:efd596409ae742a032599088009d307da101c623602e725a7afe328c8b9e157e`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f55bddbd465f1a5f5bbffb8742bf4f79f6577ba1236a5d980fa482d3b5433098`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json
