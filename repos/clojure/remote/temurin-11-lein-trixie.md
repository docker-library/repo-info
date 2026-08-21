## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:53588e872eb4b7b8a45905a372765405d749e470bc1fecf533946ba556776db4
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

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3e372cd9c674d6150fe22d918b7dfd469dda7b9ffde9dfe31e206e2cd46cb520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218569859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16e33bdd88b0a859c9be68e63b32dc7b73bde257976c7d772145a07aa47e029`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:10:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:47 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:47 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:12:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:12:02 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:12:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:12:04 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a19fd1946baa4c637a9a5ef6af18fb2657532f6e586f5a8fdb4e4c177a20f192`  
		Last Modified: Fri, 21 Aug 2026 19:12:25 GMT  
		Size: 145.9 MB (145861378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85571fec8fffeaede84c5373ddd479c34d1b4e58f80614e57bf7945d84c35d63`  
		Last Modified: Fri, 21 Aug 2026 19:12:22 GMT  
		Size: 18.9 MB (18880921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb69a6424a6b774f8752e6d56c0d21844a2c5c44596d9b6a81927d0072f93364`  
		Last Modified: Fri, 21 Aug 2026 19:12:21 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d609ef8e1fa3149adb833e466672a4274512ad6943d9ab7f10a4985bec4aa508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf87064abc33a4271fe3f91e317ad4b1cd58730dbb10a1ad3dedc2410d8fa33`

```dockerfile
```

-	Layers:
	-	`sha256:7ad4476af42b713a2927b4f2b51337fff06d56743f70a0976426c1327840783a`  
		Last Modified: Fri, 21 Aug 2026 19:12:21 GMT  
		Size: 3.8 MB (3837370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1aa023ffc8a8b3a92dd66e0d40d44d427cdf43ae876e699221e85023b42e709`  
		Last Modified: Fri, 21 Aug 2026 19:12:21 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:986bd82db668a48df375abc4d2c916612387c50865251b2689747be1e796eb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215595177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45be2d17e68568b36e68d59b17a667527aed0ada0a35288d6ca0dc6358c70ed`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:01:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:01:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:01:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:01:35 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:01:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:01:35 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:02:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:02:55 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:02:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:02:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9630f2ecb89a5bb1aa4a64be383ede5ffffc0fa91bb6d430789c3a8dd110f852`  
		Last Modified: Fri, 21 Aug 2026 19:03:18 GMT  
		Size: 142.6 MB (142566598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627608d3d39621ecf200f4ec423c1890ea78ebb395de5418174b4eea6b61f69d`  
		Last Modified: Fri, 21 Aug 2026 19:03:15 GMT  
		Size: 18.8 MB (18839489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4b412bcf7366c0d16a90ccf51d5d632d68c7cf7984a9c5be05210b8818305f`  
		Last Modified: Fri, 21 Aug 2026 19:03:15 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0f91cb0e71d474e48733b02a021f26a0bbc12e0b7bd3e9102a12ab2f90f2940c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c39e4a130802e12d0bc461282be3da1e0d65d80195faca2a9f103960bbee11`

```dockerfile
```

-	Layers:
	-	`sha256:1b4ce8f4b8a756da255295135e4afccb6cf9c7a4adaacaf6dea4ed5d13f3917d`  
		Last Modified: Fri, 21 Aug 2026 19:03:15 GMT  
		Size: 3.8 MB (3838228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ed259670b6453f84b71d761d6b59fd7c1fc2703bff1715be9e6c2b15118c422`  
		Last Modified: Fri, 21 Aug 2026 19:03:14 GMT  
		Size: 15.9 KB (15853 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0c970ebdd47e3a1bfd16e39eb1b9a514cd209ad5101178bb2c2863e105894307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209695759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d14798eab1d4dde2f88f6fe2f6b86faee5ccac278ad3a2802594c62c54db74`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:56:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:56:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:56:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:56:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:56:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:56:29 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:59:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:59:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:59:27 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:59:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 00:59:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f70809334ddfaa7aad39f8e070c50a45a123d4273b0a8cbcb3481a4c948fff`  
		Last Modified: Thu, 20 Aug 2026 01:00:12 GMT  
		Size: 133.1 MB (133110153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7045ea499bd6b41b1fb57c050444e5745d35f12703811260f2235c61b0867c`  
		Last Modified: Thu, 20 Aug 2026 01:00:09 GMT  
		Size: 18.9 MB (18936754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0204033a90d756f4f5d9b32a84f849fa206711eb81f1204251f9b857030867be`  
		Last Modified: Thu, 20 Aug 2026 01:00:09 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b587e44e4b77e2d2e99533ca4d83c5b103a5cf68f333c98f1f5db0ee471c15a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c66e7205d356e8b71f4e1b398e3fba5014953a1eb4a3f7184a3df2b4139b1`

```dockerfile
```

-	Layers:
	-	`sha256:3fa93c314244f54dc1235e76a187654970199cd806e9db09341460577faefcd2`  
		Last Modified: Thu, 20 Aug 2026 01:00:09 GMT  
		Size: 3.8 MB (3837757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d66281288b02b29ce7ac95992a3aeef6fe1192a13c9fb0009bf3795ab42beb`  
		Last Modified: Thu, 20 Aug 2026 01:00:08 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:d12a26ba9927561b9992b5124b19ed3929414a21cf38faad6b5fec7066895ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199460142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fac38860c4226f6440eb00f022f071299582baa16c194e3a67ae53c1aadbe8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:51:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:51:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:51:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:51:06 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 18:51:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 18:51:06 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:52:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 18:52:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 18:52:21 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 18:52:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 18:52:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a778c311318f1c4d592c8c78b51d80ebcab847ffe14b8ac3d137db223974c38`  
		Last Modified: Fri, 21 Aug 2026 18:52:47 GMT  
		Size: 126.6 MB (126641458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3422b1bf17b4105a7a0b11de49677695b335a23ab6f1eae2d5189022f415b59`  
		Last Modified: Fri, 21 Aug 2026 18:52:45 GMT  
		Size: 18.9 MB (18922047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b579ba50b1643d4a826b0f5159652d8c8e2f476d2e0dc6bb32e65bb10c4d2231`  
		Last Modified: Fri, 21 Aug 2026 18:52:44 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5242232e093fb6c7ad9b9eeace5420a3060370b0514763014402d4ca980e1de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9815031765a3dda4e54d168cb9b1b15fbd27973993cac4d6aed8c42406af048c`

```dockerfile
```

-	Layers:
	-	`sha256:15e0eb6193f76923872fa6a7873cb46700f99f73860e68465794b67474ec9d76`  
		Last Modified: Fri, 21 Aug 2026 18:52:44 GMT  
		Size: 3.8 MB (3833801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fbcd16351deb2156c21dd250dff6fec0dabc8c69ef33a6995ca48f2dd55dbc`  
		Last Modified: Fri, 21 Aug 2026 18:52:44 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json
