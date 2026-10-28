## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:3b9673f73a310d63f721ba0bb2b16c90d7df46d0b26f948837c2defa0a0ef6c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:750242e7c6d6cb421f1b3308fc14ec3cd382b2dc55d9b77f766abd1ec1f6dc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196661211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57811d9114db7cf6962402ea4e0263ce32d6b0a4a552e80aef822abbc9a709c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:11:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:17 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:11:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:11:17 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:12:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:12:33 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:12:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:12:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fb977e19627f29e7c94e3789b8d08a8ce7e9f1a1f6be4b00b8565914edf54a`  
		Last Modified: Wed, 28 Oct 2026 02:12:55 GMT  
		Size: 145.8 MB (145825440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202ac4bcfac58d18d0dd6cf24ffadcc7478fb6f947c10c0b0b22b10362ebfb44`  
		Last Modified: Wed, 28 Oct 2026 02:12:53 GMT  
		Size: 18.1 MB (18072710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8316fdda740e77e4fbe1c0e7db2efe864cae428a673a379f05cf7492e624956`  
		Last Modified: Wed, 28 Oct 2026 02:12:52 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c8bb070ba6c61c6c36dba6bbeca32759f6c502b2e8b5cff66618597a41df98`  
		Last Modified: Wed, 28 Oct 2026 02:12:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0152c09de23eeb76b2e8806dff384180179839f91cdb351ae0b2ba0b06823c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f05357a43a0078d53f9d17dde283b36b6930e0a89a1a12a51be4025be442718`

```dockerfile
```

-	Layers:
	-	`sha256:3488835e1f93a6dd973d4c86480840e4c4d152ba02d613deedb48cb68a6da8a8`  
		Last Modified: Wed, 28 Oct 2026 02:12:52 GMT  
		Size: 2.7 MB (2736323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:213fdb9d6db0e8d5e61a162dc5e76e8eb6346724fac6d98cf1025ddbb1c17e09`  
		Last Modified: Wed, 28 Oct 2026 02:12:52 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b0123df4d2a96c8e53b48d886c2def3e15b261bfdcd2f66fe7ed87d0d13294f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195217826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e191652267373240f97bae92199eba38de290f7dac7b0e7fa2d42bd4bb4e6ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:18:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:18:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:18:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:19:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:19:23 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:19:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:19:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc04529217c8a5af5aa6aa9dae948553b6ed94dab9d426986138e1e78d6af4b`  
		Last Modified: Wed, 28 Oct 2026 02:19:46 GMT  
		Size: 144.6 MB (144648247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c5ee4094c078866a6559fcddce2a65e84ee9a72fca3e1d9f49f02a32e940cd`  
		Last Modified: Wed, 28 Oct 2026 02:19:43 GMT  
		Size: 17.9 MB (17915982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee8d7e9f04939425da99931ccf6fdd13ceab67252c55167a14bb4185a2488c1`  
		Last Modified: Wed, 28 Oct 2026 02:19:42 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6a322f2ca789c81998a2601905016de737ac305f516a20ece37aba6d41bbd2`  
		Last Modified: Wed, 28 Oct 2026 02:19:42 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3a1ef6249eccd86c8569472905ab22777a7b60eaf86168d82e63f1810e67fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee708e0f1d1fc614c4b110b42e9d429479634a7dd29973d0d41bfb4757c93087`

```dockerfile
```

-	Layers:
	-	`sha256:965dfc657c6712fbcf0a5a02e35ceb6540eb84ff82c0ad5e6499d8ddb912dfdb`  
		Last Modified: Wed, 28 Oct 2026 02:19:42 GMT  
		Size: 2.7 MB (2735938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fee54f9fdf0559203d4dc32401710ee6417555823fc56de947b6c96843a9c420`  
		Last Modified: Wed, 28 Oct 2026 02:19:42 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bd66ad74d5cad8ece03b8ccce8558e97a332f3a4e603e38d1d9acb751645509a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200559738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804abd8a482887b22f7e85da232bac56d23efdf641997fdefd383b49ee5b06f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:48:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:48:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:48:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:48:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:48:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:48:24 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:52:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:52:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:52:10 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:52:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 09:52:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 09:52:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 09:52:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a022e325388c8d6662b7a11139049a5ad2ed36872c5843aed231d39b610bdb`  
		Last Modified: Wed, 28 Oct 2026 09:53:14 GMT  
		Size: 145.7 MB (145671601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3de9309dc2a6e090e5cada759cfd13da7eddf0311c54c2c01b23c7f8bf238c0`  
		Last Modified: Wed, 28 Oct 2026 09:53:10 GMT  
		Size: 18.3 MB (18279649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456ff2ab202023dad20c25a142715631324f7e55032830f3917e282f9cf8d6b7`  
		Last Modified: Wed, 28 Oct 2026 09:53:10 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca5f0601bd76e4a410a01f768d2233b3a5c78c1548cdd733d4848d82f2450e5`  
		Last Modified: Wed, 28 Oct 2026 09:53:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e1633d730ecd80b89154fe5a55c05f84def7dc81b809c7c0732f5daa36ec0755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea1c8efb2f93c6637ebd18604d3f7fb1e09725e2e3580a4720592ca19d52469`

```dockerfile
```

-	Layers:
	-	`sha256:27e343dce1d19c69d6d3657a01701a1c9733b009caed40533ac24b775bee5f30`  
		Last Modified: Wed, 28 Oct 2026 09:53:10 GMT  
		Size: 2.7 MB (2738156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce66cb187bf981a08921bc0398ce95eba289062d9c7a552d583c50e95b46f975`  
		Last Modified: Wed, 28 Oct 2026 09:53:09 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
