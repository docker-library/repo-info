## `clojure:temurin-25-lein-trixie`

```console
$ docker pull clojure@sha256:b34f266447e45ab4e928debd490b6a0ab13a63e9e7a92b60d7e6a9f7fd022529
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
$ docker pull clojure@sha256:4dcee0fc2eb70f01efd39e27c7275f805b7a2a8e554802b11a3b093a34dc649a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167841772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b5b188b5bd278fadff48095c395542c2a36feac2ced978af76ad8ea8e8b8f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:01:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:01:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:01:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:01:21 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 23:01:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 23:01:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:04:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 23:04:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 23:04:37 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 23:04:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 23:04:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:04:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:04:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1861b8c1201eea487929ad0d0388eb3f0928087bc066346e43a0a6fa142eba`  
		Last Modified: Fri, 21 Aug 2026 23:05:17 GMT  
		Size: 91.3 MB (91255844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12cda7575985b54bd471e84c7cfd7c994708ffbe7c917503814148250ddaff6`  
		Last Modified: Fri, 21 Aug 2026 23:05:15 GMT  
		Size: 18.9 MB (18936667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02177f973e873c2ad80e2d6f2ca853a7ec478eb4fe528f80da210e7fb0ec2ec`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd45ecffd88831df1bab35693b9b53b52cfbee15853efe237d0e896d888929f`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e76a146707ba908d0af682adecba9eb181c21a2db5d4393eed1b8475c96edbe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3957374f49ef8d72113e89a862fb67a821f1d55afff6f086878763ca1278d4`

```dockerfile
```

-	Layers:
	-	`sha256:ff7f6a4207d8a6e18d8e294287788aa4c8059a0967f2c8e98af62b18c6ab576c`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d40abd4d58ddd604b6bde53df28e4e864a4b12e0dfbc9ff8bfa780936716b13`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:df68dc4bf97f3b99d55de2c3b27b0602eece7547893d8c572144cbad5cb8e3f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161266272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cac554114c24a4db72827207b77bcd7011132990a5a44ae6cd062e8b14dd28`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:09:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:09:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:09:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:09:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:09:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:09:42 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:11:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:11:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:11:00 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:11:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:11:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:11:03 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:11:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676f96e1bf8f0d74ff9a194b7fdcbc50a24e5d806c1305acc7787c1d56eeb157`  
		Last Modified: Tue, 25 Aug 2026 02:11:24 GMT  
		Size: 88.4 MB (88421937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4055a2aa0324dbd18a261264d82fe9dcefb0b57914e2afef12d730bf99b2a4c8`  
		Last Modified: Tue, 25 Aug 2026 02:11:27 GMT  
		Size: 18.9 MB (18921989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0267600339ce07881b251eb02d29fbbed113ee89ff49c39897728a112b7d1396`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682ac07f2f21cc76c7729469a4409b0fd92d2738fd60a5edddeb9fea8b433f90`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6dd6805e387a5bd845f063c91dace0b11547f31ea25da71db999f7df84086c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c7fa74d4bd87d1162625079249d0256e0c3ec98dd12f49c5bfecf66e19268`

```dockerfile
```

-	Layers:
	-	`sha256:5dbffac98f5e143b0529227dfa670e6311ab762ed0d6d7f75d2dba761ab7d590`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 3.8 MB (3771851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34e9035290f64b346d46a49bd2ad2936cfc203e997bc45954d874b61db98c9d4`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 18.3 KB (18344 bytes)  
		MIME: application/vnd.in-toto+json
