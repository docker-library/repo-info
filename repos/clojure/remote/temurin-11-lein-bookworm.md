## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:8e0ed656a7ff73aec3f76b71273035138ea13b98682b3723bdc2e3d148cb76fe
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

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:11c408b2a219363d8ba7f9549c7acc0dab58ec54ff0dba65c5c09652a862945b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075e98fcaf256d68c9df64b016d8280da356c10860da28ddb481d89d9574da5c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:10:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:02 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:02 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:11:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:11:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:11:09 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:11:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:11:10 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459af1fe9a205f3ec370d62e971f9ec0a13cb4ae14180637509cfc5dd431055b`  
		Last Modified: Fri, 21 Aug 2026 19:11:30 GMT  
		Size: 145.9 MB (145861399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c214470bc3e9a370916bc26a53dfc9463cac5fd71faf43d5dcf1a6cb35378624`  
		Last Modified: Fri, 21 Aug 2026 19:11:28 GMT  
		Size: 20.1 MB (20123489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eebd0ca25451ac05adfc8589f2f62b77aaf64d6a9bd85b799eca690f4043503`  
		Last Modified: Fri, 21 Aug 2026 19:11:27 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fc0ace9e4023b1d6d76a083b72c1a512cbd1fd412a5046e4af2240d1c19433f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4558c320de6ee9cf908f72fe46e059c51c1acc7c48ab05b2a7cec41fb6a77bb7`

```dockerfile
```

-	Layers:
	-	`sha256:9594b3cc6721b290b4736aca46dd6404a42b8e2704b1425004f7b29ab20fabba`  
		Last Modified: Fri, 21 Aug 2026 19:11:27 GMT  
		Size: 4.3 MB (4308771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fb0b23bae0435e78103a646b67a2e1f2ceaf5d17f95e89e04c6f6f2a31df95b`  
		Last Modified: Fri, 21 Aug 2026 19:11:27 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e870a44f63ca8e04a76a5df75162dbc85f18c06db50fe129da7f85bc9ca44a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215420631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c548d0eaae392b5e8a5194c87a139da3b89c732643561678e9ca69ba8334862`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:00:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:00:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:00:39 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:01:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:01:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:01:49 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:01:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:01:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f7650816caeb4206ea76e0b9aa5ef3440f8f9ff9cd144306cb8ac8e63e2dba`  
		Last Modified: Fri, 21 Aug 2026 19:02:15 GMT  
		Size: 142.6 MB (142566598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9ab8c5ab0b2f0d616c142ed8f97b1b59989d9241c712a9aa3d0cdcb5b746f`  
		Last Modified: Fri, 21 Aug 2026 19:02:13 GMT  
		Size: 20.0 MB (19955412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cd8bf52e04c01f94c9995f2cde3c6ae026c1798bcc2b50d8d837b7c42e324b1`  
		Last Modified: Fri, 21 Aug 2026 19:02:12 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:31e44bfa0a71fc201a4d21dd268cdecf7fe52eed3d27714440afef479ab39f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d38666ff55ae8a1a3dc9e13c784415e32165770050649b6e4417e950052ba1`

```dockerfile
```

-	Layers:
	-	`sha256:3777d05f5461f9004b0bb3c4d4fc0da6fd78299da8380edc3e72bfd21e20aa73`  
		Last Modified: Fri, 21 Aug 2026 19:02:12 GMT  
		Size: 4.3 MB (4309004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7de775b6e69af5eb36eb691bb3d3aeeeb24618f1633bff2387891c924cc0cb19`  
		Last Modified: Fri, 21 Aug 2026 19:02:11 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a03cf321b0ea4a8c19129f308cfa5bfd8f3ddf6ea63e41d91146b4925aee14a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210314948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4b6cefd6f859a6d7ab3549f7457a736362c6678420143cb86756b2512018a0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:52:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:52:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:55:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:55:20 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:55:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 00:55:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd376ff5969191bcbaf61490685b98edf392cffee3d7a499070089f169927e2`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10353120d5172089224f6d0c0d1dca76e0e6cdf2f23ad2203ab6cae15228356b`  
		Last Modified: Thu, 20 Aug 2026 00:56:02 GMT  
		Size: 20.3 MB (20348090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a916ee0f37563c9254c0eba731823e3eb9c863744a544e41e4fc0289a40127`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8022f2e015e6e9c8f935a61fa493eff437862c4c4129e43960b9d806e7f584aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b7e6fd879e8d37d74c4167e6d9f45255c27429ac8a4d4f5dd38146488bb6f1`

```dockerfile
```

-	Layers:
	-	`sha256:e05d03834789a61ad051380e3783ecc4ce17128ee509a0a0b770599be74e7553`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 4.3 MB (4310019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70777a597230c9fcb02ad70fb26f58a4dfa89db0115ee8945715730aa7f3f280`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ee9200d7bf7e3e2e10484f6a81c1d9a1e2d06720d9d8d7ffe8349e52b08244e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198095037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4261be3e9b32974d58c30737c04bc2bcc6349645fc4c2c47ae193d0ef4b5be`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:08 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:25 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d65642bbcc0659abb67fb458474d1565054b3f0c1bdf2a9931965ac027d18df`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d85ca611d3c68fede020667980128e2e175585648d4ce7c9a84dfb178bd167`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 19.8 MB (19770084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9e779124100c0c999cba9f62651ab66eccf7c37e6969fc1f5eafd8075d37b`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b76d1fc1d381c50c11672fe0e69787df997a81cffc97df7b6304f7a7de175ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df427527fef0247eca07ab0ea64e540ec38ecb020c5827a983668e549e4bc69e`

```dockerfile
```

-	Layers:
	-	`sha256:1b108ae6466c7d8e9c37f5d01b212b15a82d1d4c863e317b29f7873e186c1c92`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.3 MB (4295388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a030ee785c8f6a672c3375205659bd969ced684675a9e95c1ef4da90f97172`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json
