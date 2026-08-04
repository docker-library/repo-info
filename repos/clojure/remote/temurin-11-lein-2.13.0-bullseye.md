## `clojure:temurin-11-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:0502f9a3eb1fe89b663010742e3da791e6176ded0090d39e14e0fe57433cdf2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:07dec380ccfbdcb39f735b4cdc27b22052f3560712316d49cdb50d40916106be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221118294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3d31f65bb996d15385de83c642fe9550f75cea7eaeaff29c95a417e2a83c73`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:27 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:34 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:36 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab76d168e10354a2c09e52c2186cf5f68332f6cd1b01ebf72c5a1b7aa6bf5b`  
		Last Modified: Tue, 04 Aug 2026 02:48:57 GMT  
		Size: 145.9 MB (145886280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf3b2a3c12aa5eecf0a21fd83c488b29df6e6868f822ef20e63b994d83b4d`  
		Last Modified: Tue, 04 Aug 2026 02:48:54 GMT  
		Size: 16.9 MB (16940193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3f3223265a80c071e5369f313b6165983abf4d629167f5b9e2d4471798494d`  
		Last Modified: Tue, 04 Aug 2026 02:48:54 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:78ef957052fd0b0eed3c6069d9652ccd3a5facbc8e54cfe1ecaccebcc3b47006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979a8d2f48c77e58ad7c82f0d7dbf0a3c8558f44a8466a210bbe8e4a96bd4ebf`

```dockerfile
```

-	Layers:
	-	`sha256:86a2faafa39fea0b030da5e630400c26c21061c7864a4c06d99507dfaee4a4ce`  
		Last Modified: Tue, 04 Aug 2026 02:48:54 GMT  
		Size: 4.5 MB (4520543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1d50d07070ec31bc831cc205ee8cf6406054e60e4f7bd960b4668293384215`  
		Last Modified: Tue, 04 Aug 2026 02:48:53 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4dadb277ebaef773ac74aa203fdaf9f7e63f5ee4aab243b307c10cf0488035ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216276528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16aeb9621b315e3f44a864378544a3b378f6d637a9f1a2f6083e29d2768b73a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:47:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:40 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ec931b16fd26e8d9bef82b404e45123bc318ace9cabab64fa84ee6a7c38024`  
		Last Modified: Tue, 04 Aug 2026 02:49:02 GMT  
		Size: 142.6 MB (142582246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab180c5e707ca3f5b09ef6c94366ce6a3e4b81b1d7b46f506ffe9e0c96be88f`  
		Last Modified: Tue, 04 Aug 2026 02:49:00 GMT  
		Size: 16.9 MB (16918163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4da5ae2d2ded7957a1d826f0fecc2df3f555e3ed118d6eac4c2ae04e8e4fa0`  
		Last Modified: Tue, 04 Aug 2026 02:48:59 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:803970cd7d896f6d98f0a70f8a12ff730ea7df51bd127daa3a6e3d10848d9549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91e1a9f4ca2903b2fad17e95d541ebfc45522792291a2ee030b3ed27f7ce35c`

```dockerfile
```

-	Layers:
	-	`sha256:c70862b6cc83c008bad21d19bbc9d5d17da42876b09feafb4af51b4a05622ac2`  
		Last Modified: Tue, 04 Aug 2026 02:48:59 GMT  
		Size: 4.5 MB (4520135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13cca1ef853839a8a8850c8931dce171dc2f7801ef7f99a3ec07e4e940582afa`  
		Last Modified: Tue, 04 Aug 2026 02:48:59 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json
