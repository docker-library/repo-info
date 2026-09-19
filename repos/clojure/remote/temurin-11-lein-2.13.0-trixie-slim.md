## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:59fe4c8258943089d3063e93c2b500b79301e7c3544a829cf8133385909925f6
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
$ docker pull clojure@sha256:e4804d389ecffa22292c69c59ab6ae89ad036d2be748a9da51cf15f7ac9c1b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193749977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bbbb25b9307fa9de5aaaf0cfb117d487031c21cc84f76e786e1591a3645c00`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:29:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:29:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:29:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:29:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:29:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:29:25 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:33:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:33:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:33:41 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:33:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:33:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e9e0c182052d6edc69f1009d244c80c1b5080422369fdb3656f08d0bc19a8e`  
		Last Modified: Wed, 16 Sep 2026 10:34:16 GMT  
		Size: 133.1 MB (133090138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bb6d873bc8155ced1724064093d24c4184e60a29097f5bd7b144d30be0e9cf`  
		Last Modified: Wed, 16 Sep 2026 10:34:13 GMT  
		Size: 22.5 MB (22529148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca7720a3c121475ae61315fd009a4f246ef19ddd7bf9e8f5fd06197503d90b3`  
		Last Modified: Wed, 16 Sep 2026 10:34:13 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3e703ff379bf194473643428694fc43f0811ae514c5addf4443301b52750c291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d5d6b3345f9aa36d8c941b3dbd7ed45d8bcafb36e20cbc569d5e53820ad4e1`

```dockerfile
```

-	Layers:
	-	`sha256:4a48e9241ae5093026b4d2892ba851d55404360fc526384a362c4cf81d676781`  
		Last Modified: Wed, 16 Sep 2026 10:34:12 GMT  
		Size: 2.4 MB (2387230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:710814a373a2b384f49466db12d6e0f2c9a2dc61065535758db6c35714db2abc`  
		Last Modified: Wed, 16 Sep 2026 10:34:12 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
