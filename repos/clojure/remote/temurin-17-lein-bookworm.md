## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:ee502c09aa26db851b55adf0d3e3cc0b38e228500c9ea546f49aa723f9e4891d
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

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:46410a620a7c1f67d5af70364697dc2fdf1f95f661a4c2e3c6d18c88293084db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218958672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5c9fc284d7ee2e57d03ef6bd2334b9502996892282c6661002ade51f27cf9c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:12:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:59 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:12:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:12:59 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:14:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:14:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:14:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:14:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d23d05565ddd661621f9ba79c683289ea2de0b3975bbcaed7efc3556d8232c`  
		Last Modified: Fri, 21 Aug 2026 19:14:31 GMT  
		Size: 145.8 MB (145822642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d716dc56c50c9a5cac997d77975e7ea74e0f2019ddf9aeed7cdcbe8ebef7828`  
		Last Modified: Fri, 21 Aug 2026 19:14:28 GMT  
		Size: 20.1 MB (20123303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d60be061f99caf9ddbbd7caa3daf5a8fc7be7999c10fb60338aaa4b84e3c4d`  
		Last Modified: Fri, 21 Aug 2026 19:14:28 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52585c83a10cd581c0857698c1999cda23a1694596f81199193db672080ce74`  
		Last Modified: Fri, 21 Aug 2026 19:14:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c47f6d7146915db0e7a0ee170bb976a6388f89e59706c32277e2020439a77a29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38beffdc0b26ee42775a828aa10ecffbe5eee1bf50f322eaafec10cc552477c2`

```dockerfile
```

-	Layers:
	-	`sha256:4f5a5d305a8355bb24666a5efcb71d0e6cae5334284b92fac13e41006c1ad2ea`  
		Last Modified: Fri, 21 Aug 2026 19:14:27 GMT  
		Size: 4.3 MB (4289255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2649e2e3dc1d1c6abdf4da08d74dccb14ed809daef1a3ca0a97812361e9b3073`  
		Last Modified: Fri, 21 Aug 2026 19:14:27 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bfbe93e64ad090c62c65f9dede01db94c3e93d917e138a63eabd9fa1c87e2238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217502425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b324239b6359dcd9b6145727bf8b73731d2309c19042c7d8c51ce9192ad503d4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:03:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:14 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:03:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:03:14 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:04:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:04:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:04:21 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:04:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:04:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:04:23 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:04:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b23320da6b2b57232ef78fd930dbe722ef8002a8fe3ac3d9ce39fecca8177a`  
		Last Modified: Fri, 21 Aug 2026 19:04:44 GMT  
		Size: 144.6 MB (144647522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfd90c09dbbfb31c49ad9fc780a216fceee898624b62e5b464232fa6f2cf496`  
		Last Modified: Fri, 21 Aug 2026 19:04:41 GMT  
		Size: 20.0 MB (19955868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63491c9e01b80afb9207d90141200c5296965f1bcca34973af4b7956c3b91f58`  
		Last Modified: Fri, 21 Aug 2026 19:04:41 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd68b876382dcac8d4b98ee09ec87203201744ad4da59bfed3af948ff205d888`  
		Last Modified: Fri, 21 Aug 2026 19:04:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:272510e2bd95d3cfd42ed75f6ac1d59d39cb1563b7a688a4a3c4b215af2f9c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf3c57e56560e73ad9d1870b831651e917e6253e94c6a082b01d54c6bca8141`

```dockerfile
```

-	Layers:
	-	`sha256:2d1152216c32e9be1b39c946648abe8fc35016321758811433637e20ff62218d`  
		Last Modified: Fri, 21 Aug 2026 19:04:40 GMT  
		Size: 4.3 MB (4288870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d04e6d9177afc369dcdcd5ae45113919f1d55bc8df81abf4b72f6978d29569`  
		Last Modified: Fri, 21 Aug 2026 19:04:40 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1d8cbc741d6a31b86127791d1e6c68f4f6f1e41aacc54b77fc110881994dbfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222971439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e04d923410c627b4775c53d84d3c01930a79f72d1e1007862f78ddb13f48f7f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:04:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:04:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:04:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:04:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:04:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:04:55 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:07:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:07:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:07:28 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:07:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:07:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:07:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:07:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399431649866870af8d638fa471d6ac66e92bbee0bf25be0e4a8931487de1d23`  
		Last Modified: Thu, 20 Aug 2026 01:08:09 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4caa637db0afe403bf7c8d849eea34cb684233147b1c19a9190233bb1f3f6cb`  
		Last Modified: Thu, 20 Aug 2026 01:08:06 GMT  
		Size: 20.3 MB (20348122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373f1f89e22f1ae914a01babdb81b87f75f9f23b0fbc44b1dd4b0d175f71a18c`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b15e8219f327a09e2bec608590e9e76622fbfe4617079fe6ae232d2885a739`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:166c1a9d11226b9712b8966740d857355cb848d4c9c7822d286e01761c32392e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a25bd46bb2ff8283d4c783240389f5b635ee142a7a7db1ad097c084dccb112`

```dockerfile
```

-	Layers:
	-	`sha256:415cc046e895bf5af0257811693c2affc768d65036d1f0b50c90f0d339e427a7`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 4.3 MB (4291118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840d607d02e5457af8ac55ce3810ba7016ce2edb29c6c9cf1d04d1f204fe2bd2`  
		Last Modified: Thu, 20 Aug 2026 01:08:05 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:463d2f5b68cb936c5c2573e66c83868638ae01db26f23e758208965d8d769361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8dba5ab5e0fd9c53b63ad2a79b15f2ae7037f5a392fef8b66db22909b64cd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:52:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:45 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309965fd29815352376730fa95c4d849749c698da80d21a83af566516fa3898d`  
		Last Modified: Tue, 04 Aug 2026 02:54:13 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5d1f6475473e300348805cfabe690c122627ef0440ee655ecb4a14b7f07122`  
		Last Modified: Tue, 04 Aug 2026 02:54:11 GMT  
		Size: 19.8 MB (19769924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aba123444d6e3877902fc32684f0d657439937021ae9ba18bb173688baf60d7`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95338122a9b1d364e1084dae83b24895ef156f4d40be011a5afceca627eebf48`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:104ebc38021d804ecd1f93c120d76d63b1b02af7cbb5ceacaa070fc44dc98998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3442c7eef5bb39cbe6390ca4baa6b521b397585872446d088ecc18829bc440`

```dockerfile
```

-	Layers:
	-	`sha256:3cad48098292d4af8d035bf5f8d8353141f93a0b5da5cf8eca9d13220757c639`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6b05deaa80ccdaa6b3b99b07f791192930ec46f46c4c67d4de6c6d148d3f8e`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
