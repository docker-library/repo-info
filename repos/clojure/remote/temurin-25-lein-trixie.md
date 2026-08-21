## `clojure:temurin-25-lein-trixie`

```console
$ docker pull clojure@sha256:e9d5909a694468370260abe764911357cda10c11291ea0be9464757b8edff1b2
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

### `clojure:temurin-25-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:eaab980d252b3d7900bb5fa2db3ed3168dde7fc7897ca449f797182a40173bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165324305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8cbd256036cb41f6fc8f363c5ad55a2b687e917f6cee4e02b61bcf08373b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:19:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:19:53 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:21:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:21:09 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:21:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:21:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:11 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf96d7c603db3c921d91fcbe17f6c34c3c50fa4641d9337cedd63de57bc5365`  
		Last Modified: Fri, 21 Aug 2026 19:21:30 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d57024873df49b3de16673b334591aecf8cab72bb7e65f074e4002900a179b`  
		Last Modified: Fri, 21 Aug 2026 19:21:28 GMT  
		Size: 18.9 MB (18881272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c76cc1ebd0b17c0100daf31bab8329704cb79b8d621205655e014363fec916e`  
		Last Modified: Fri, 21 Aug 2026 19:21:27 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8750c24f1aec19e71c6045e9c0fe2147bf72dd62e295f10878fc8dfacec51e5f`  
		Last Modified: Fri, 21 Aug 2026 19:21:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e747a54eb736fbab8246d325f01eddf4a027fbcb4cd8f2c34ce0b9866c50ddf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96724579c9367af2986ec18100b992ea8fe44a5c7752098a0eda2943c14c9be`

```dockerfile
```

-	Layers:
	-	`sha256:d22e31baeb73fd53a1612e5bf97d2926cdcc83a1359692e3916d7e82df5d3fc6`  
		Last Modified: Fri, 21 Aug 2026 19:21:27 GMT  
		Size: 3.8 MB (3785884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a87a14f30dcaa99e43c54a5430cf90b620ca6acec965c917943a1e5e5da3db`  
		Last Modified: Fri, 21 Aug 2026 19:21:27 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6ee96ca1c64a6412bbf3cf972852000e9387b6e8116c3a936388b5b47a73db3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164561086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173f9bf1d65d6ccc901d9d1da098c3cf08825ea848d94de5acb6933fdc569658`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:08:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:09 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:09 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:25 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:09:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dda8f85ca2ddb8a81b49e8bffe958f989feb14e2fc74b1bb4e8a4b86ec0f9e9`  
		Last Modified: Fri, 21 Aug 2026 19:09:50 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4a89240c61a40da4464122f678f31371d8dbe447d69b70971d4ff453139eaf`  
		Last Modified: Fri, 21 Aug 2026 19:09:48 GMT  
		Size: 18.8 MB (18839425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38d718c0b5a8649856853ffafa91e5907ab3bb0b92be9e0ea25b05605bafa3d`  
		Last Modified: Fri, 21 Aug 2026 19:09:47 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698db838b66bad452a9ed7dd6654b17d87b55674aab9fb14d1b50430f170e5a5`  
		Last Modified: Fri, 21 Aug 2026 19:09:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f686d6c39ca69fe6158ac7e627f19f769249c2242bb14acea6265fff75a69bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded8cb6f4b0aa401ef98e1e581feeaef52b533004e57baf543e20e799ac2d8ee`

```dockerfile
```

-	Layers:
	-	`sha256:251bab465f9c94c95b912ab30d74c6645a765e474577abef102bd23effd0f792`  
		Last Modified: Fri, 21 Aug 2026 19:09:47 GMT  
		Size: 3.8 MB (3786145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04646faadc5e5cc4823fc176729cc62ce0fd305e54152fc2b1c6414fc0b6235c`  
		Last Modified: Fri, 21 Aug 2026 19:09:47 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:57e988267b4c920081c2e1b4d310703f3fe28beabc485339556c631882d8b212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168499927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be228c4d1ff7303d981a9227f1393c0d0b1c9f9c2341dcd18af508ee72b646b3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:33:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:33:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:33:37 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:36:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:36:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:36:52 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:36:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:36:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:36:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:36:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efa0cee089e58c8faae54912fc9dcd6aa4f9d1b11a1b44c0b947c37df7dd367`  
		Last Modified: Thu, 20 Aug 2026 01:37:43 GMT  
		Size: 91.9 MB (91914013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0345f588da4f94fbaf2ca1b0085f5fb68154316a45cf4abd3401a9ea930e0daf`  
		Last Modified: Thu, 20 Aug 2026 01:37:41 GMT  
		Size: 18.9 MB (18936670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16bed6996ea7bd64bc68df8f725dcc0a982c136ead3c3cdf6459ea835ca690b`  
		Last Modified: Thu, 20 Aug 2026 01:37:41 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022bec63a4d7c1616ee18ba734f9c9c2ab6f2eb4089c2666c899edc95cf383b0`  
		Last Modified: Thu, 20 Aug 2026 01:37:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:457010c34001cce9f1b986c4de1636f7ca7bbdbf9d8f2753a7abf6b48900c126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3768acb2b661d7b1352b0ca899179cdef5a6f4da4f9bc0041a3ccbafc3bf5061`

```dockerfile
```

-	Layers:
	-	`sha256:90c91200d2dda21fffc7c12aa9e28988fffa2c4367cc78f691c34d592d9b69eb`  
		Last Modified: Thu, 20 Aug 2026 01:37:40 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d1e22c6f4518612690921017281c079d62e505fd3f6f4bb2d017743d091d90b`  
		Last Modified: Thu, 20 Aug 2026 01:37:40 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:acd2e6c5938a36fbf5d283ea54a18c0ca81e8b734d728a9e12c22e2fb6cd71f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161241127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fb78e991da235c3f39f78ec88a4a877411512404cd0b85af502fd326b392a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:10:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:59 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:59 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:12:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:12:11 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:12:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:12:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3816fd31f8a88a78848671f5506401a67f0ecb76c84161b11ae3ce4c63f8fc92`  
		Last Modified: Fri, 21 Aug 2026 19:12:37 GMT  
		Size: 88.4 MB (88421932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4f0cae96d0ccaf09267ec8f4ecf73eb50b6e0adeeb2c02d575617aa1ac1b0d`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 18.9 MB (18922130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4ed1e462b4a7146e893baa446bbdddaa5a52e99cdbef56c85b002065ca42c0`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4dba5aada308c7edf9baa8a8af583251b7e743c67440129f059d0c598a1ab`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:24c62d94a34e18ca51319703122ca9d807eaf9f32a08e44c73550eff8dee79d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09668a7082d77b7d8cb255a947b8525098eb6a7c19ab627c9e1afa7fb6c9f5b2`

```dockerfile
```

-	Layers:
	-	`sha256:b247cd33e4948edd74ecb138bc096192df4881c53fb02360f793ef084ce475c7`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 3.8 MB (3766873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33bfd728aea05588ebeb76f733bf50145a02f2682cdf6908247feed90baba035`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json
