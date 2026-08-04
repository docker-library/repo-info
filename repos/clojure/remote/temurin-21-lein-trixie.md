## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:4d170b7553db7f31addd2cd4f670f8eca30c892c59240fa5488d636ca9bfc33e
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:59f790193c9119d159340e1bc7e492f2ddff365b68eb557facc271d91c960c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02000d91c9e59f15d87cdf551c56318cc10f04ae35c5689ba0c8ebec127362d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:51:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:38 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:47 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9ee4d7b91fb1aa1a197ef416224540f98f0290aab70eb2cf3d9d23f601dc43`  
		Last Modified: Tue, 04 Aug 2026 02:53:14 GMT  
		Size: 158.2 MB (158166920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887030d586c32ef0448ecfc6c5901932aedc9fb56c920475444c2769187ac4ee`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 18.9 MB (18891466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4da55096c11ed1da700a323fdefe7e710ee8a268c36a378bf0af6fc3b655da9`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9088893ab76dfe820a19b76d3d7b76ac4e7bb09cf4614daaf0b7b59b4012c8`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2cad6c9e03b94983f23b77bdeac70f3bbbdccf4ee8cd42f1b0a80ed52aa2a596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7caca794a4e6fdc9e7a86d45e19344910efdf91e5f9a9f354685f3555fbf537f`

```dockerfile
```

-	Layers:
	-	`sha256:de71593012c976c59e46e8ecd646f5171d2d92e4ba73e6f963a311b54fb08af1`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 3.8 MB (3819708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87ef825377bb91738d1f20b90a478b40b6e4281008267e2d66fa6871256f9e6c`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2e7e1370e7397a849ba1a211fbe79a615deeffe912a50e6f2108ec7d50bf30be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1385f64b313a26ba8ff601a83cdf45950817ab234797bede86b9694694220244`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:57 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:13 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d541e382e0d301059251e2e1d125a1abeb53dd7bde5ea6588cf780facb5e39`  
		Last Modified: Tue, 04 Aug 2026 02:53:37 GMT  
		Size: 156.5 MB (156461276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ceb4edc7aefbb1961404dab1f8e5149b843e5b832c4fc2eeffc0458a454311`  
		Last Modified: Tue, 04 Aug 2026 02:53:34 GMT  
		Size: 18.8 MB (18839634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f694a6a4e35373f60e6057c5850a072d048910c149fe985c814b6ceea1083838`  
		Last Modified: Tue, 04 Aug 2026 02:53:34 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5adf05965bbca9b76eed683150d754754119489bcf54ea10c5347400f4f4b3e`  
		Last Modified: Tue, 04 Aug 2026 02:53:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7d8106edfff62f1135b3a8786e2dc126e0bef4e5a470af47516fa4c987818caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ddb7264ef0597736e88f44ad4f8c737ebc362f7448112b1f3bbf669c21de2a`

```dockerfile
```

-	Layers:
	-	`sha256:0eba12de4a73ad51f45d613da071c52fa6fe0df6e92ca0d160dba054ce99b651`  
		Last Modified: Tue, 04 Aug 2026 02:53:33 GMT  
		Size: 3.8 MB (3819948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea38bce7d3fc6cfe94899f42b58556523f45d67efa74e5c21cbc34a3ec965158`  
		Last Modified: Tue, 04 Aug 2026 02:53:33 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:26e102d5e5e6fd184849e3a93f316830ce6fdc97ca086d979302d38ea8effd1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234929440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b0a3e8060f63fdcef0a3229e58f7d29ca62e89d490ba23f1671e207930ebf0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:52:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:52:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:52:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:52:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:52:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:52:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:55:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:55:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:55:08 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:55:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:55:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:55:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:55:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bde8679fb1e7aa32fbf77a5eb9478dc2a87a552d24aaa3b4df306d7bb38a6c`  
		Last Modified: Thu, 16 Jul 2026 02:55:53 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e58bd57447e96dc38daecc0dad3a26e9cd3220bf8a5a419d9c1ff0c32eaf0a0`  
		Last Modified: Thu, 16 Jul 2026 02:55:50 GMT  
		Size: 18.9 MB (18936589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ababaac7e8277e30fa5ac39367149bfed60019106a56e56379ef7fc16a5a3a`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d3d32a12c1a8939f4981aa8feb54b372902841b098aaa2914ea8a54726e45a`  
		Last Modified: Thu, 16 Jul 2026 02:55:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2577bed9ae49dddc42b06e7444d1dbf341b872447b53793c6949c99a4b614ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bcbd07273f76c97b6e5a19df45154b4f6d6bbcdc57295874f3e2a1e69421ef`

```dockerfile
```

-	Layers:
	-	`sha256:4bd02a59c0d614cddc44a895826c4d895a2b0b3ccd0fe7425763d83ac92f74b8`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 3.8 MB (3820708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6696594a5f31efaec7f0f37e676d5485593558e980c8676ca0b1788484641225`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:54dd8122bf70632edb41ee397f10ff0df7b639992dba3fca7c8303e246437d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220207793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98a1f7395a8eb56461edfb055fe2fca78d6f52340556127e266bd8b68e1c2ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:58:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:58:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:58:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:58:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:58:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:58:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:59:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:59:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:59:48 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:59:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:59:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:59:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:59:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2dd5e148a09fb2fb6c102713911b8b5734e7f5cf38b228f35c11911462405af`  
		Last Modified: Tue, 04 Aug 2026 03:00:17 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c287c7c43cf198292e5ac24b67aa9defcde46360887206a9b5baa2cdb0b910`  
		Last Modified: Tue, 04 Aug 2026 03:00:15 GMT  
		Size: 18.9 MB (18922081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019d827868850f81aec2b5bbe20af6509d4d6eedabed8e40e6673f44cda9021f`  
		Last Modified: Tue, 04 Aug 2026 03:00:15 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0718606a846a059d4e9fea40bd708b849ef922f2cefe105beecf6d2604ca5d1a`  
		Last Modified: Tue, 04 Aug 2026 03:00:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2c1ecc18cca6f537b1027beaa6e7f4b1a68412c049162c0561fbfe866ac0ab4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c5159ed949274eaa5a39f4a450b09f3722263f35fa0fa51a950fd58593d72b`

```dockerfile
```

-	Layers:
	-	`sha256:1a250ddd46ccff893558d3ef7a3056d4046c04b5f84f1acd41e53203628cbe58`  
		Last Modified: Tue, 04 Aug 2026 03:00:14 GMT  
		Size: 3.8 MB (3816135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4aad8d5b3034ae9ac6cda4ce1600b766b38c2a7638073c9da1d0a52a90cd8cd`  
		Last Modified: Tue, 04 Aug 2026 03:00:14 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
