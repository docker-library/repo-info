## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:3e26bad8c5ea24d44fae6185954752e50c67fa58ef8af3e664de4f078ae458cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:24178ccee3e242d28700490e1efb0cb5de453e79aaa702c2cf7f54906d8f72b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147691263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9762d73991b4aba0b02a0c8d53a6429f6cc5c4c901c925a47431c3c3a7ebc05`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:53:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:04 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:53:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:53:04 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:54:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:54:21 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:54:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:54:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:23 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9741fb9951e8609b31fdab9e5e5e644fe9f83e56f967b521ad417b9fee2c7f8b`  
		Last Modified: Sat, 17 Oct 2026 01:54:42 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a04bc9db4af7a14d3db341247415200edd72ddfc7102e3e6f16dc006a434646`  
		Last Modified: Sat, 17 Oct 2026 01:54:41 GMT  
		Size: 20.4 MB (20362816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ea44aec6770cea4e9809574ea7cd47100ef66f58bd2e2ce612552b284355ab`  
		Last Modified: Sat, 17 Oct 2026 01:54:40 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e48aae17b9de7bb3d42153f46e49b4984925b6346e1fda5f0e4e8feddc1f2f5`  
		Last Modified: Sat, 17 Oct 2026 01:54:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c986122991cfce4886dabf9a30c8d50587758065e507cd9013881e6f0e54fa53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7ce0c7c30bf6dfdb2b892f2167a30e96d31d51f7d53d98542bf51332d97b34`

```dockerfile
```

-	Layers:
	-	`sha256:81d0993cff5269d284c895afe2a9d564265f58afa52c4611bc896ce46c5c2a19`  
		Last Modified: Sat, 17 Oct 2026 01:54:40 GMT  
		Size: 2.7 MB (2702511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dcfdd69d109f70c931c1c4f5c4e0e77f348416ac7e346c2531515d76394ef6f`  
		Last Modified: Sat, 17 Oct 2026 01:54:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2c75849af5fb1877884473e0ed8ecdef2ae5289dfb8a95a754c48008f5a425fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146353277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3099582c1c5eeee4604d40d4302298b8df882bc8c1b4d6ee8fc7a43b1bd4a1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:33 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:53:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:53:33 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:54:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:54:53 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:54:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:54:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:55 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39e083a0789ed95bb63142d6d6f170f4019a7fc599ec6f0afc0e1a556979fa5`  
		Last Modified: Sat, 17 Oct 2026 01:55:14 GMT  
		Size: 93.5 MB (93543597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3696e24a43435ae454f95066855efb92d5279784ceea306a29a5cd55d3d80a3`  
		Last Modified: Sat, 17 Oct 2026 01:55:12 GMT  
		Size: 20.2 MB (20156887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31250c9e64b7237d354eab074be565a71102d5ec6fe36cbde5a9e2536aaeac9`  
		Last Modified: Sat, 17 Oct 2026 01:55:12 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab4d1633ef6f2aca3edffb2c6c777721ba1add9a7c8d4b9fb6bc37d6ff1f0d5`  
		Last Modified: Sat, 17 Oct 2026 01:55:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b1c7d6e3ffc1ff34417a4df06975c76c82aed8b433c9d94c0b8681bc1327c899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b8ed873da8d07d353c5be8295916c09d50f0e41d8c550a19785fa594dbfde4`

```dockerfile
```

-	Layers:
	-	`sha256:fb10f5dc244f396e7b731a80a3421a9167684fb8a0d1b79eeae6588b1fa0fddd`  
		Last Modified: Sat, 17 Oct 2026 01:55:11 GMT  
		Size: 2.7 MB (2702123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b01166fc5ba2a0e2d851a73b2e851189ba10db908d0baf56e86826e02a823036`  
		Last Modified: Sat, 17 Oct 2026 01:55:11 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e9304698147ca2a59fff31719c28325981860725838b90dda586f525bd9ec837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150694544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7c3d6f1655fe44a1b8f6255d38de5a04fd115663ea7fa60dddf229ba0b2f51`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:44:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:44:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:44:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:44:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:44:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:44:47 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:48:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:48:07 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:48:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:48:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:48:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:48:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d73dd0cd52d79880f1cbb3f3606ec8bdc285c8fbf42ead54402897b2fa5827`  
		Last Modified: Tue, 06 Oct 2026 10:48:58 GMT  
		Size: 93.4 MB (93350868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31318de31f62155fe8376c9ddfacfc58cc818235c1ac434a2b58884afd315e06`  
		Last Modified: Tue, 06 Oct 2026 10:48:56 GMT  
		Size: 20.7 MB (20735599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075df5b2f3c9e0f6ccd1bc07c9c3fcf7321d70203dbe87791e804247ea77ebfb`  
		Last Modified: Tue, 06 Oct 2026 10:48:56 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191960b1e47d554ad4f2c6c4311e4a5164b82dce086488f04476e3417c853a32`  
		Last Modified: Tue, 06 Oct 2026 10:48:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:637dd2cc670f19963e5df2b72379271d2e72d8a7943deb0001dc9c2583d27fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9984ce852414051c7e072580200eb724e3ea0001bc679cca2e7e4829402bc58b`

```dockerfile
```

-	Layers:
	-	`sha256:7f8d50d3f81aa3573f20cd7abbfdd87773ff0bef2b2a13ba25e9268504860f26`  
		Last Modified: Tue, 06 Oct 2026 10:48:56 GMT  
		Size: 2.7 MB (2688280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfce2928fef0f4085d92b06ad58202e426ee4a664924abcc3624804f6e703a42`  
		Last Modified: Tue, 06 Oct 2026 10:48:55 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
