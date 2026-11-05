## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:37f4a519ee6903ac9cb6923ce65268909f2f1fe882a5e495286ade84c1c5fb52
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:57ad550466c8bc0ed184d99c41f13234a82a8a00ace96df0a6e3998e77801f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143712032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262fd03a01b9490d340af9290ecc118642c6567f827ad43ec6d1e2701871049a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:10:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:10:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:10:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:10:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:10:31 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:11:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:11:44 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:11:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:11:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4839dcd9aa7f7cfee4f6d9c9ef7303483fa7e009abe24f1d89fc3893e83d2647`  
		Last Modified: Thu, 05 Nov 2026 08:12:04 GMT  
		Size: 92.6 MB (92598904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e307242f0a9b26ae3bab4141141deb5cbb083f9ddb4061e3efef90c1f9763d`  
		Last Modified: Thu, 05 Nov 2026 08:12:03 GMT  
		Size: 16.7 MB (16741342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0566aa1c3e288eaf2cc9f44f90b14f85bf0c475aee50f6d7b183169af6de0a24`  
		Last Modified: Thu, 05 Nov 2026 08:12:02 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687bf24b2f57c6122fa695d7c2faa74b3f9a4eebce6c2781829f3c4cb16fcf37`  
		Last Modified: Thu, 05 Nov 2026 08:12:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2d9df62660250eea260fdf849b7b33b695cf6e840d184ed8587aa5abca2861d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa4a4735e69f0c029d8462cc6b69f96ea7323e278570ebe9d53a502984133e6`

```dockerfile
```

-	Layers:
	-	`sha256:1137e7536d08f212e985acd95ef0bff8dfe2bb1818730be02cfd358d47f56f63`  
		Last Modified: Thu, 05 Nov 2026 08:12:02 GMT  
		Size: 2.3 MB (2339796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0820130b4c9a295a98a50394d203b58daa8a407a165572a5324d0fc26368152c`  
		Last Modified: Thu, 05 Nov 2026 08:12:02 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:56957160ecae57156ff8bd61316d8870826a94bf14b6d5c411e9ac4edbc12f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142963108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8b37dd6fdada493cca014c15e6eee33223a767fa3862241844e17773875d90`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:20:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:20:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:20:00 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:21:20 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:21:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:21:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c1c173a8552be99410360dbaa811f49d396537695d78617e0df0876ec05ac5`  
		Last Modified: Thu, 05 Nov 2026 08:21:41 GMT  
		Size: 91.5 MB (91525602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9340301878b779846f326d4380369ccf69a7352e4af44e36bbb318358a1b239b`  
		Last Modified: Thu, 05 Nov 2026 08:21:39 GMT  
		Size: 16.7 MB (16707826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef8e3ea8d475d672e8e0177f8230fcbf229cfeda66a19dfa04b43e816c27dd4`  
		Last Modified: Thu, 05 Nov 2026 08:21:39 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46768795f284c7cd593e3e2a913287cb90ffd3a36cca5e9f391d8a8bc5b560d7`  
		Last Modified: Thu, 05 Nov 2026 08:21:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2f3d53fe0289edc451d9a82171c2d5eaa8739f9ad587bffaab4b8f37f1655784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7637b1d53ad6bc88777ca98f3edce902107737e156c6ff6da5b978a89f8d6779`

```dockerfile
```

-	Layers:
	-	`sha256:a2bccf95da1ff91323c24c567a9c21365dc5a5c2ad58556ef867e5cb6fc2fbe2`  
		Last Modified: Thu, 05 Nov 2026 08:21:39 GMT  
		Size: 2.3 MB (2339427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc1da87ae60fd56631dceaa70d2e993daf1d11cd58b2023ee57f1035517ffbb4`  
		Last Modified: Thu, 05 Nov 2026 08:21:39 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:96abf3cb255a04f83d7f8c99e7cfcc43072514b4ed3baef4239448248cd9bc46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145072422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2718b72c67ae929b309b8a10217cd8eeffb6edd67c3e0454ebe774ec3b70b167`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:34:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:34:23 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:38:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:38:13 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:38:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:38:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68133e9b05e76d46954f6cf5c0cf62b5a09a4149a5436af7285698288e95fe69`  
		Last Modified: Thu, 29 Oct 2026 20:38:54 GMT  
		Size: 90.1 MB (90111646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d21450694bf7a4a21081e29b3c218350839db2e0550b323e6cf28cac8d82ea9`  
		Last Modified: Thu, 29 Oct 2026 20:38:52 GMT  
		Size: 16.8 MB (16778879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2dc044ca39169bf23065a0093527ae08109967d2dbdba0b570c9dab9d4d4d6`  
		Last Modified: Thu, 29 Oct 2026 20:38:52 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e079ded38303b778f39b3a695eb60716a8a0ba6a6d92f9ee786e7fc7a68ce2`  
		Last Modified: Thu, 29 Oct 2026 20:38:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:13fd067407443bbb46f2bd405fcc7def885f2b8d2dc39883ee48938e2febb386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2bfd30e6e2bd9544f6b650a8d2ea111939ae30887783f264dad9de31d8d42b6`

```dockerfile
```

-	Layers:
	-	`sha256:6f81dff2569d19b43002b574c73b446d735821178db1da1f5f37888c7046d859`  
		Last Modified: Thu, 29 Oct 2026 20:38:52 GMT  
		Size: 2.3 MB (2322239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46d75b1e53d542131f346ad561003390ff3f9522206fe0e193fec7a9afecd248`  
		Last Modified: Thu, 29 Oct 2026 20:38:51 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
