## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:9577a0427136330a956b7fc8c08926b15a11f3f5a0b587620b68adcaa50edf17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f8c9cd3541baf0cf20c2b41bf6680c6d9f1e6799d30e7c8628e95b15648951e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218659819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51714b92f63401f61556c324b62d94490f53da50e96586c0f982ef94ec750d9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:10:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:10:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:10:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:10:37 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:10:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:10:37 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:11:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:11:48 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:11:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:11:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78657d5bfbfbbb6288bb16f02b1e7d3e0e59775b0b38578e6b0d29c9951e5b52`  
		Last Modified: Sun, 11 Oct 2026 13:12:08 GMT  
		Size: 145.9 MB (145864272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de8ee9ad9599969651d2e4754ff41c4ff528e6eb33d74d9d13b6a7ab94d918d`  
		Last Modified: Sun, 11 Oct 2026 13:12:05 GMT  
		Size: 18.9 MB (18887129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a22d215204fbadc4769c36159963be49d86419231f4cd7254d350f84ee12ac`  
		Last Modified: Sun, 11 Oct 2026 13:12:05 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bf3a55497928ae024b228e34c862568f291b6f032191f1f607643f4d2ff13bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e62c63f510281529afb68ad9a9ce495aa6d0e7aaab5361370c8232230aa3dc`

```dockerfile
```

-	Layers:
	-	`sha256:747b087cd73abdb9dace444b86957817fb66ca8b7af21a8452f16a16775251b9`  
		Last Modified: Sun, 11 Oct 2026 13:12:05 GMT  
		Size: 3.8 MB (3847263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c9cf8da683a2734a6295fe99e0fe2def90f2dbcfcf675f211612ce2f1c63321`  
		Last Modified: Sun, 11 Oct 2026 13:12:05 GMT  
		Size: 15.7 KB (15733 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f4a8536c87fd4b6a98f26e566461fe5c41b9c36b680a561fe525d7238cf6c79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215698122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b583cf5570ee34466aba6cda37b72eaff82e40bee4a387d54000d3ffd95e0ebe`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:10:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:10:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:10:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:10:21 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:10:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:10:21 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:11:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:11:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:11:38 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:11:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:11:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368420e26ace67560c48fa16044acdf4af49aa069f5e6274aecaf02471faed7b`  
		Last Modified: Sun, 11 Oct 2026 13:12:00 GMT  
		Size: 142.6 MB (142576557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f650674294b8537cd2aaf9489e54d3a500858a4bbdf4022e843eed03227437`  
		Last Modified: Sun, 11 Oct 2026 13:11:57 GMT  
		Size: 18.8 MB (18845230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0379134dee0ebd9a3b631d636a9c4a046ef9b33bd02d6bdb970c86e724ea539c`  
		Last Modified: Sun, 11 Oct 2026 13:11:57 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0a787faa3988840cb8b35bf3e12cd2b587197f019e3809a685f69b06bb02c0a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6d4a52b4f223d4c72d37d9683cd5dd4d244e4cdfc371c17bb68204504fdd0d`

```dockerfile
```

-	Layers:
	-	`sha256:c3c737a76f8a0b92b6ec5355571f1719094737cc8d87fc41f13aed089028908d`  
		Last Modified: Sun, 11 Oct 2026 13:11:57 GMT  
		Size: 3.8 MB (3848121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b3a3591cdce6a4d00e5972315c7517178366505bcf4ffe4aefa8452cf487de`  
		Last Modified: Sun, 11 Oct 2026 13:11:56 GMT  
		Size: 15.9 KB (15854 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ce62dd8b9d4581be6364db0e7dd3e675a47840f7846bcb1ce0e4957358d82bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209759834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40d84c782e95515426e7676c51dcce30c613d1feceeca6fd091f670e0b77b25`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:49:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:49:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:49:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:49:56 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:54:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:54:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:54:31 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:54:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:54:37 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c2e011e56e78db8374efda3b94fe762c4a963509127a04e984447ceeb92501`  
		Last Modified: Tue, 06 Oct 2026 09:55:19 GMT  
		Size: 133.1 MB (133094704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd2d927acc077f077537cec618dbf4091e0848a8d728201e56d87385eeada23`  
		Last Modified: Tue, 06 Oct 2026 09:55:16 GMT  
		Size: 18.9 MB (18942773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdac1cb94335891226413dc5802c2a321b14b1cff4e352e1d47291968fde2514`  
		Last Modified: Tue, 06 Oct 2026 09:55:16 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9f12cbfafa021f845c132f05ced5beab49a2908d67c0576e971e89c140fb384f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8653407254e17819419d01228284b474aecf9a23a81035b79b3a0704b4a740e`

```dockerfile
```

-	Layers:
	-	`sha256:84f07975eaddf33a742e9d2a096faea8ced8752a355c8b715a6a9ed3b0f5388f`  
		Last Modified: Tue, 06 Oct 2026 09:55:16 GMT  
		Size: 3.8 MB (3847646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48fddcf3e4ffc97d89a658486b8ac74ca5c7c6704103896bbace7a0e4fea4a97`  
		Last Modified: Tue, 06 Oct 2026 09:55:15 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
