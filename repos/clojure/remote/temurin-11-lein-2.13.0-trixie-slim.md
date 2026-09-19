## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:1e2af236eb4b3d246684176a69e154cd2bc262d0c2f6ee376641143b5fd887cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9afcc94ed46db1aea2c6555aa4e8d54290ea3b61012686f69e16aa09bb8fa56c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196962241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efa781d9092dd89ef11841894851790ec215d01c2d013494e9fe759f19d9953`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:13:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:13:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:13:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:13:43 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:13:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:13:43 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:14:58 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:14:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:14:59 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a00a1f3a210addcb24c274a8af93c577d8c848fcc8bdb951cf759ddff32438`  
		Last Modified: Sat, 19 Sep 2026 01:15:18 GMT  
		Size: 145.9 MB (145861340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4999670a9610f060f4e35a6b0c0a5a177f1d636282e0b4d68d256b4998e175`  
		Last Modified: Sat, 19 Sep 2026 01:15:15 GMT  
		Size: 16.8 MB (16755271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14fd50ca402d12e901bba4a3e129ebb2061f22e97740156490faa281579dedd9`  
		Last Modified: Sat, 19 Sep 2026 01:15:15 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d7886dba391af076f6e429420d68c8a1c2cc4860e64774c4c6b432c2bb7ca2a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3fa821b87ca37c8d1e0835ed293eb7f5e5fcc9bbcd6fe534fd70e18ded864d8`

```dockerfile
```

-	Layers:
	-	`sha256:d2ab822e1e62ced102d1c7ecd5fc73e83ca539e9c04b1620415df506b8b588c0`  
		Last Modified: Sat, 19 Sep 2026 01:15:14 GMT  
		Size: 2.4 MB (2392539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac2c4ed88f7d04c4fb027bca8fb9f3b04645fa56f1af75a0450070e2b2495`  
		Last Modified: Sat, 19 Sep 2026 01:15:14 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6c2d99c50b2c4e0d347a4d7357de9006bf761fbe30ced9483c88b55f9fe1a53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193982719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836a0788f48ba0d2a27e0196cf04a6c6a618f49ca6f658f24aa759a68f2f2d27`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:21:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:09 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:21:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:21:09 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:22:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:22:23 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:22:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:22:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4d03977e32a3fd6e43c144521fdba16e34051a6d068c2318428dc3b6e6c51b`  
		Last Modified: Sat, 19 Sep 2026 01:22:43 GMT  
		Size: 142.6 MB (142566262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec2bd91aa92f4ebcf57e9421830255890561fc4d35d0ebfc8c62c7793a4cc4d`  
		Last Modified: Sat, 19 Sep 2026 01:22:41 GMT  
		Size: 16.7 MB (16711557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1212107588f6c7bbd495e42835dc8917b93083426805ed5e77359eafd14210e4`  
		Last Modified: Sat, 19 Sep 2026 01:22:40 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14fbf17b910f2adab93a9496797f54d3b1254a589e6ce7cb84fb5ed85be94a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adfe72b8870e4cd8d2df9d16b62a844d421de5a31dcf9fe1e3424da38c1c99be`

```dockerfile
```

-	Layers:
	-	`sha256:b074854d2b54ade1f3114fc51c0e090aafbc4710e6225d13eb5dbe2de9dd8935`  
		Last Modified: Sat, 19 Sep 2026 01:22:40 GMT  
		Size: 2.4 MB (2392767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3692544a755f20a89a969debe112a767a204c5432eec148aee21db801e1e1502`  
		Last Modified: Sat, 19 Sep 2026 01:22:40 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1128d78b67673f36ca51eab4fcbb938bd66f97c903899991ec1ce21785c1e1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188028761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5285a376bacc0c91d706a13c8994e71f924b9ea99664d7fdf911b671199bce78`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:43:53 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:43:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:43:53 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:47:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:47:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:47:42 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:47:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:47:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccae2a29775f4b87ed1664fa003cbd6f8018f51b1b85e136fdd9c8eae069cde`  
		Last Modified: Sat, 19 Sep 2026 07:48:21 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11b7676733044a5dacc9fb922bc5204a68fb5eeeecb03020efcbd3981bc363e`  
		Last Modified: Sat, 19 Sep 2026 07:48:19 GMT  
		Size: 16.8 MB (16782192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7de09270b961a49270d3a5ca0e85be4bcad31d89d0a820465265b960471c3c`  
		Last Modified: Sat, 19 Sep 2026 07:48:18 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5ab58adda19c70093eb7f7e0f53e81e0b7bb7ca20a8c21970f3ecdd55f33da81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39f8e3fd36eb5df0009cad0d45440476962156797231d25b5de108c29655225`

```dockerfile
```

-	Layers:
	-	`sha256:1270efa4db5370baf2c6ac431f4e7493ccd9399a85ac22883f059d8fbd29c9ff`  
		Last Modified: Sat, 19 Sep 2026 07:48:18 GMT  
		Size: 2.4 MB (2392904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4a4bea7a4a78fe81d12f8b36cd618a50bc55d22ede670c187659850a947cf8`  
		Last Modified: Sat, 19 Sep 2026 07:48:18 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
