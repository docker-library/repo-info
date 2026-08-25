## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:2812bb2d2de12b6f7f77608cde15b47c4815231abd854fd60cdb78d91f62de01
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
$ docker pull clojure@sha256:e0f0da662bfd708185cb93e4c220ffd1cd2795c89ca63231c0bbaba0f1dae3e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209675518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe996d3f2c7221331fc820f4f5c9c37b40da313833604eb5b030e9ec0eef52bd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:37:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:37:20 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:37:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:37:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:40:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:40:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:40:34 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:40:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:40:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084b8690c19959508c59fd39f894e560873583a3645792800fb1e42ab4d47b40`  
		Last Modified: Fri, 21 Aug 2026 21:41:18 GMT  
		Size: 133.1 MB (133089927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3c969d6b8d7e5f1e8a57f776dfbea332a75fd263c4e7266278ec42631f9c4a`  
		Last Modified: Fri, 21 Aug 2026 21:41:15 GMT  
		Size: 18.9 MB (18936742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b5f33383943010451ed1b1da23ffea939cf612dbfe4d47fea7964f7d81d2e9`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ecf4bd411982365c113a4064e473c4837036bdd61d8fa474504aef67a2de71c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c5f1f04f0893068b845cd24633d030fecbff46a7c1470a2d8576a8285465c1`

```dockerfile
```

-	Layers:
	-	`sha256:2d1986622d93e23a1d445ff1446852628759f57f329f0f097bf91185d5bbe870`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 3.8 MB (3837755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6108f1b26f02f67c13536609e947c759481a907ea1991252c504fde6132e1bd`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:b5bb06e7ab17c9094ca8e4830c1481b1be120face6f3d317d85bd08bb998621a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199485419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8015e99026c0ca42858c8255f209f60d3a9800a74d6c14fefeeb53352dced473`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:04:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:04:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:04:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:04:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:04:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:04:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:06:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:06:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:06:19 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab5b07b410b0b3b90f92be9682888fefcf8d363f922d59f4dab458ccafbd2e`  
		Last Modified: Tue, 25 Aug 2026 02:06:46 GMT  
		Size: 126.6 MB (126641461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a6a22d4d96564463c8196025f285fcc98c2caaf9d9d81b425b97d80f41b084`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 18.9 MB (18922048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06458b3ef8b5c593ad69c53d138816b397a3f1afbdc8b9a0bf3042a9ec2497d0`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3d5c3555e060700ab205be1ee4172da9f26483479aebcba794d1ec1149b1871a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d3e113ac25450b983273e77a4c64bb73b85e463a262207d245b953f0dfbbab`

```dockerfile
```

-	Layers:
	-	`sha256:967419d3e8c1224a802b55832ac8f79db8cfd9626bcb4f65f6b0094e2ec8b326`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 3.8 MB (3838779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6eea34b8ef9a3404a56095ce3bb01bcb4750bfaae1bc7ffa8ae9347cfa6a81f`  
		Last Modified: Tue, 25 Aug 2026 02:06:42 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json
