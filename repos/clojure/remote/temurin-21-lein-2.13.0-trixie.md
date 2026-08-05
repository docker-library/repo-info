## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:d705d2c37d0019bb46a2aa03bbe7507f28d3be15c12107dfdbce540496f27507
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

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4f4672d9c4284eb9697afa3d583b1d8d4f4deed995750244d53148ec4023b2e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad309298c54496a5e20169fd18d727f23dbc681d7640e4d1fd125ec5036bdc9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:22:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:23:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:23:44 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:23:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:23:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c405f8c1eac015a80aece6a0215b917d731215903e1ff5484fd9a41bd75873ec`  
		Last Modified: Wed, 05 Aug 2026 01:24:08 GMT  
		Size: 158.2 MB (158166944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b0eaa628cc32504484dfa431d91c8e912ad348cbc70b7274b82e9726a3b0c3`  
		Last Modified: Wed, 05 Aug 2026 01:24:05 GMT  
		Size: 18.9 MB (18891401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f24a42e1fec736279652fae2c4a0b947c98c4465b049b6c05b3e0bd4b9ecf7`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7969359b24aaa0977eae17978afc55116fb99587153c430ae760450f6609cf76`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c760769090d51d0713ac70df655221fc8023a13b0967ad8829bf8f73bf93974a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4772bba7f75c7aabc0d928aec507f16be07242c8a3f60c62e6706194d2ab8735`

```dockerfile
```

-	Layers:
	-	`sha256:60194eabce7602fb831c71b63d899180674f4ee72276ed5af904bd38453a4cd9`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 3.8 MB (3819708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ca4ac34ed12bc6d46d555c79306d4f28dd7ba2adf2b0edb32999e786756ea7b`  
		Last Modified: Wed, 05 Aug 2026 01:24:04 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:79ae0551f70f8597dcff5b5d7ed33e85669966b1b273621609daf4038991d189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778ffb3999443c73db2adf50f322782c9a816c6968f6acfd25225e37c36f8d08`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:28:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:33 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:28:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:28:33 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:29:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:29:50 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:29:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:29:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a6579a8adc59f0832592b9cc5bffffb4e6e4a38caae4ed7acc752d407a611b`  
		Last Modified: Wed, 05 Aug 2026 01:30:14 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2847136c12da97d4e1c58363caef6a6f55c23b2d0aa23d0ac90bc505158c5ef`  
		Last Modified: Wed, 05 Aug 2026 01:30:11 GMT  
		Size: 18.8 MB (18839433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d0765e1ce03223cedec37590946bbe50fd3185d6cd69ed3ae85b9118eab50b`  
		Last Modified: Wed, 05 Aug 2026 01:30:10 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58e5d2ab1c9c8c288f1993112a3fb78da82d891324315862e96ecb35a96cad2`  
		Last Modified: Wed, 05 Aug 2026 01:30:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f82d91b2be7d9ee60a1066e5f05e0bb9bb319d13fa4cb7f4f0d76f12b8852804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9992df9e7543c289454ec7f284e40a7ba0091213e923ccc31b879430dd904b59`

```dockerfile
```

-	Layers:
	-	`sha256:df3cf2d79dcc6b615693f2c9adc8e242479e889ed869dbce219c96e543dafa81`  
		Last Modified: Wed, 05 Aug 2026 01:30:10 GMT  
		Size: 3.8 MB (3819948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f606d1961c9edc77c1cc685b83f1dcc51e02a06915046089cc09c7e0c98e16e0`  
		Last Modified: Wed, 05 Aug 2026 01:30:09 GMT  
		Size: 17.8 KB (17837 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c84b3146797f0db68006904a1020a7b5c723967f44763f09ca1d4d6ca5cae710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234928993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98292ba25825d47f65604cf0b5a50be3eb5223a9686ca2139512df5eb7f2ff79`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:47:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:47:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:47:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:47:43 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:47:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:47:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:50:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:50:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:50:18 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:50:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:50:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:50:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:50:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c626bff995483821a9feddd77f9c5d47b8f37cd0e214f188c0e30a5d97e555`  
		Last Modified: Wed, 05 Aug 2026 07:51:10 GMT  
		Size: 158.3 MB (158343253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d9100915e1337e555c8613b2b8d5f7f63905596396bf61da9e9e4410fb597a`  
		Last Modified: Wed, 05 Aug 2026 07:51:07 GMT  
		Size: 18.9 MB (18936494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b5d9be1ef40c4ecce7491f83d01abb4446b5caa898127d4f13e06cb99b5d10`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ee679885744068ab2ceb9b576aa333ae0a915d9cd701a623ee2a6c80050bcd`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:afa528404a78ff6aeda8f4976798d2b7e049048085111c452bd58c6f8c7923b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa4c77a99b50502c38d1b21aa903ea8e8f34b9e7ba788879722f6a300021920`

```dockerfile
```

-	Layers:
	-	`sha256:83a5317afb10d61187467f6b9bfb84496bbf85d4bab5260a25b2b4445aad5e83`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 3.8 MB (3820708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83cafc5cf30d1ac2e251199d4eb0ec8de9e17a448fc556d4250349acdba62c7f`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:080a77c47a1f7b5e204ce72fd8090c773866f1960eedc06c8d4833b6a248fca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220207480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee22ad875d9ca40dcc4c309026912d5fd5ee626f59d7de38025616cccb5e7155`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:48:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:49:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:49:24 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:49:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:49:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:49:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db00a13c62963253b62a9e4d5340036301bafd28f92718540e60edf3a7374aa7`  
		Last Modified: Wed, 05 Aug 2026 01:49:27 GMT  
		Size: 147.4 MB (147388336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e60f0fe95b7cd90113b0194d62b6381c08efe41af825679fd95654a36c4fc2`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 18.9 MB (18922078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48281e3a992ad6e51ba1c688bc98809ddcd93635efb42b3eda4c2c72f666ed2`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed1b971200dd85e393cae7232e9b2d1eb9ead3400b322cc8d52c407b5a3e607`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f8b6ec57ca29f9e639d53dc352cf79453254f0112c643ec6ee64f91a636b3965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99c9e496c0c81e214d15cb0838732fd2dc540aac8eba619ef705f57abe5ed24`

```dockerfile
```

-	Layers:
	-	`sha256:6b56209fcaa68a3388e8764bad6ebed07abbc1719363f57a6e19fcae64f8fbdb`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 3.8 MB (3816135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24cd222fd8f8c73093be0bd8cebeab0bdc4bab97eaa4c2ba6aea8a6218bf276d`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
