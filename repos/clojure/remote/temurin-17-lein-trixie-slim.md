## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:858e541384b75d54cff11753e3056c2d7f1bbdc38315a2a9f0f34536f9ecc717
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3bf3e23dc49dfc46630f43c1153568f7a2f049932f622adbdd437f359941972e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197198007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8a04e76021a5e00a22b0559a4a0060da569c58f4b2ad017f40815d6f6eaf15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:18:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:18:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:18:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:18:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:18:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:18:00 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:19:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:19:31 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:19:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:19:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db087a53cd6770750febd98dfd498b8b97a133b28e8c912d9dd4baddbb08cad6`  
		Last Modified: Tue, 03 Nov 2026 22:19:52 GMT  
		Size: 146.1 MB (146086105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40a1098ceb2c49d253f34cb4af9ca77eca52a0765bc743384c19aedd8562677`  
		Last Modified: Tue, 03 Nov 2026 22:19:49 GMT  
		Size: 16.7 MB (16741012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351a04efbb9e1e6fa27e141718a6dd8f921339f983c4fe56df141a84250c7ce2`  
		Last Modified: Tue, 03 Nov 2026 22:19:49 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bccd0e544f9268544e2ed1caf1a4bc5fa4b0eb42c9b68d5e01293461adde0454`  
		Last Modified: Tue, 03 Nov 2026 22:19:48 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:80ae0e6475f3c2f2d1fb16d9ee79f8639597dad03d6425b00f74ba1573642af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56c9ef96be611c980f6efda2b495e35d7d336bf48a4f7784fb0f0a5857c1180`

```dockerfile
```

-	Layers:
	-	`sha256:4cbb4dc940b6149e2ba4ae0946329d04da9c005bc9b035ea71418cceb964394f`  
		Last Modified: Tue, 03 Nov 2026 22:19:48 GMT  
		Size: 2.4 MB (2371746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d24f7f270acf1d0d09177da1df1cbd46426cb399807d6a25d8a07ffba33d55d9`  
		Last Modified: Tue, 03 Nov 2026 22:19:48 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4eea8410b6d622958baf2a60bd0302561b6c89855ca67f65d95c045adfa45afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196404272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ec037b1c22e32c1d4eabacd074a96a1ddf8135d88dfef228d2aff1741445c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:17:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:43 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:43 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:19:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:19:13 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:19:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf49cf9c8a0c1702dad727ea113da234c432f12208c23b1e2e14215365046ca`  
		Last Modified: Tue, 03 Nov 2026 22:19:34 GMT  
		Size: 145.0 MB (144957182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97637954701c6106d3894f6956bee710d3fef40dc59b5304e8c451492954b59`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 16.7 MB (16717993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31459fce8b3a4189bc2339206803685cb5c9a9d437d40a0ff5a621818b4ecdd1`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30c22d62600556171802ff8ea20945df855750fc84c07b945a17c98db9dc14d`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:59ecad4bf3c7b4527b6fc46e92799da437bb83b13f71d5c3600cced6a22a1797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab946712bef3e19c5a9183c936688dba1a4d5a0786e672f14143be964cb7ceb5`

```dockerfile
```

-	Layers:
	-	`sha256:865c7048fcc8c930df32be173c7b330b086de5d475a5f4acf17e1f735eeb0fe9`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 2.4 MB (2371356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc63275f49e58965c1536c297a6f28863c7d1cea8a0c88a5d3fe7c020ef4a2df`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1702c919abc1088ae1c8e6342c25dbe458469fe4dd16cd7bc42c5128efb83fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199821137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9382d30aad9b158733b6740176aa8e3027ca69d4eea369dab604dc289478ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:42:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:42:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:42:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:42:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:42:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:42:29 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:46:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:46:08 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:46:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:46:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:46:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:46:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa1439eedc0664cd6ab9b06966ee483aca719e4ede6de00d0dfdd8f2f09ce66`  
		Last Modified: Tue, 03 Nov 2026 22:46:53 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f0979ffae047461987d932a779710ceab4154603c10ecc7ff1cfcd0e7a9aa9`  
		Last Modified: Tue, 03 Nov 2026 22:46:50 GMT  
		Size: 16.8 MB (16778760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d95011f77b2cf42c666502f82b0bb1af5b6586cb200bc1c28a02249d7d7369`  
		Last Modified: Tue, 03 Nov 2026 22:46:50 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6304fb30f8b1020ce3f0cec974e358362789a66fff90225e530bc8fd34b052`  
		Last Modified: Tue, 03 Nov 2026 22:46:49 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:73a6753b8be61d132c66b51fbacd8b1f4c887aaf72df5e9ccfaed826cf916993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2055c305309af1df486821199c6a9b0572345edefa001d8179f9b950c3c3f1`

```dockerfile
```

-	Layers:
	-	`sha256:92130907d6a02bb22ecc5350aea6444d1d84c67ea0f3f127e3a3bb827e4bc795`  
		Last Modified: Tue, 03 Nov 2026 22:46:49 GMT  
		Size: 2.4 MB (2371480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eab50c9e7c5f89467fd17b64aff00f3163716892ec55771b46b3c309cfdce506`  
		Last Modified: Tue, 03 Nov 2026 22:46:49 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
