## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:76df379a0a684cf93ed1a5dca848e446783e3830d0be0c7271c46e703c59c7a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:989521fb45ce705809a8c8c2a6d0b60bc3225db14c5f98757f79c6fdb43af858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219029688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a09e2df5ec15418bcd6667b2e6b213773d05643341b5d3bda6c244dc87059ae`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:37 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:37 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:45 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:46 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d134539555a8d81747f085c8d4b9d02894ed34acfc4fd410ef2ba672c1b405`  
		Last Modified: Fri, 02 Oct 2026 02:45:06 GMT  
		Size: 145.9 MB (145864229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e03fad7a5f183dbc4ff6b6522b5694dc079d714290cb0a4aa9f31002f704b61`  
		Last Modified: Fri, 02 Oct 2026 02:45:03 GMT  
		Size: 20.1 MB (20146806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f7ff6cc7ad626ac5abdc950641d633ae7c725af1d27b7713fd78cb2b49b992`  
		Last Modified: Fri, 02 Oct 2026 02:45:03 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:151f9ea38802d7706430533e431cb0ed925c53e4b1f99ba172cdcfbd0b477e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae1b7ad1db56002bf30627dabc581283a6c43ddd9e2a767c911a1f26ae70022`

```dockerfile
```

-	Layers:
	-	`sha256:fe75ce5d52a414c95f161af7442b9c6db0c7594af603fccd0898ace281d65828`  
		Last Modified: Fri, 02 Oct 2026 02:45:02 GMT  
		Size: 4.3 MB (4308815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26adcb4193c95a41397a5826235095df31894977612ffc7d2c15ff46ddfd5d30`  
		Last Modified: Fri, 02 Oct 2026 02:45:02 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2b47d85a7c8e113af05ae39c0e590f2796527b40c84f0d0f289714212b8fef99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215448984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5512c281ce47a72f6c4a13a04b6a9e08ad9e16f4c6ab145bbf4080d82703680f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:22 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:22 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:32 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf7c5458fdb546e9084f93313a55445bc969c1137e3558c84abbd252f2bd7f8`  
		Last Modified: Fri, 02 Oct 2026 02:44:55 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283dd2db2983be98e568a4aa19e1d007aed4566d1c7bf9e8f24fabaf76089637`  
		Last Modified: Fri, 02 Oct 2026 02:44:52 GMT  
		Size: 20.0 MB (19967295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704a95b4ff82c790b949e011def9343eee9447ab1af30339d9727569c7506b01`  
		Last Modified: Fri, 02 Oct 2026 02:44:52 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9e8989facb19e790b1f2e765d78ab0d5206af254904423c9c7ad265d2945f4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1c6b970974ae11edb674aa53f6738212ac289f094e70665414e9775051a29b`

```dockerfile
```

-	Layers:
	-	`sha256:d719a04ece2011267602b79794f440577fb14400cdb0b6a6360cc9d9b11a1e23`  
		Last Modified: Fri, 02 Oct 2026 02:44:52 GMT  
		Size: 4.3 MB (4309048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dea8717a54e6736220f499612bc1f892f9c7bd53912cc278e03554b1ee7efa8b`  
		Last Modified: Fri, 02 Oct 2026 02:44:51 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7cd64d9169b8effa4dfda6847855d388cbfe6abfecfad521235f1119499ffe05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210317706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cd851c10faa90986e3ab6bdf4b90bee3451e2d0b93bae2992ed3545823b69e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:36:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:36:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:36:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:36:54 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 07:36:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 07:36:54 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:40:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 07:40:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 07:40:06 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 07:40:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 07:40:10 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aade50c3e515688be9e67b59c1d7ca063ac673c6ab38d179519ebaaca734f4d8`  
		Last Modified: Fri, 02 Oct 2026 07:40:56 GMT  
		Size: 133.1 MB (133094698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68d70257c8d4671267b4f220e544937ead9fa44876adddeb3201dded28c40ef`  
		Last Modified: Fri, 02 Oct 2026 07:40:53 GMT  
		Size: 20.4 MB (20358446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e26663466078fda69f4d73ff9f8b0bcc736e05f5c559e4eecd76a9a123e55c1`  
		Last Modified: Fri, 02 Oct 2026 07:40:53 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a393bd300016baea0179126664cd805a2946dbe63230c26e7e9b3f9c28654782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab9834bcbc56ce7da78b80ede5fac58ac94da2825333c27184bea9a3d14d68e`

```dockerfile
```

-	Layers:
	-	`sha256:037956f213904ce65b6f17cc925e7c4af045d327d90137bd4be00335d9e401fd`  
		Last Modified: Fri, 02 Oct 2026 07:40:52 GMT  
		Size: 4.3 MB (4310061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:754ab1b6c3deba245d50e07e5dc9755afb76d8b0bafc31fd22a2431332a8c3c3`  
		Last Modified: Fri, 02 Oct 2026 07:40:52 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
