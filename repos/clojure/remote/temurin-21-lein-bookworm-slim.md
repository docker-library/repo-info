## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:e84f9ce6682eec959d877ac01ddb0389c441807d72ca73ecb5d8758340df6a7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3571c5c4befba357b43f14a3aecdab9931a65f6f4b8082b4634c2ea2a4c62c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208960619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f405fe6763aaa1c45279c70266b8ba36748e2a2f8a2fea503c9912ff4ce51f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:15:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:25 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:15:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:15:25 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:16:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:16:33 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:16:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:16:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:34 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c0955d2682da1def93124e2f395a142f28e0faa26e12734d663ca46b903245`  
		Last Modified: Sat, 19 Sep 2026 01:16:55 GMT  
		Size: 158.1 MB (158120295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078261c3bad6252b4265facd5fc8573adcb7f876994d94d94ccdda820032c299`  
		Last Modified: Sat, 19 Sep 2026 01:16:52 GMT  
		Size: 18.1 MB (18086290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a670efe8b3e073f18897e430cf2371604849df04d2bffb88b7cd388c14665e8e`  
		Last Modified: Sat, 19 Sep 2026 01:16:51 GMT  
		Size: 4.5 MB (4515162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae686217ccf370f1b6cf7b01a34896b31a3a11936d29ce83e9d4f00377e4467`  
		Last Modified: Sat, 19 Sep 2026 01:16:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36dfbb821fb9e8163114718f2d653c08676f6f7cefb6e51840ab9ea51c63a4ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c6526aafeeffeca99dae21e3bbe77927ed3641098fd9e5ae8796b2fa85f8af`

```dockerfile
```

-	Layers:
	-	`sha256:d27736e1f5accfe07df8d97755771539ec11a4f1833c1b58643781f51f9b4a70`  
		Last Modified: Sat, 19 Sep 2026 01:16:51 GMT  
		Size: 2.7 MB (2739462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69b997b69366eeb669e8600de377948a88c32765babf2b0abeff7f662b20f141`  
		Last Modified: Sat, 19 Sep 2026 01:16:51 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1b1175bb540ee7c280b7a24614e9562dafd27cccb580e11e69079e5081eb4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206948171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914ab88fd00e6c7d37ab9b390a11e3b48c69bb71cf463e1550d0535d42b4c38f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:23:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:06 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:23:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:23:06 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:24:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:24:16 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:24:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:24:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e594e68bdc907ed16f27d6b4e2247c9c9e930f41bb73f6cf1d9bd540c386878b`  
		Last Modified: Sat, 19 Sep 2026 01:24:38 GMT  
		Size: 156.4 MB (156401948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18202e40d82d95a92e0a345088185d74c2b4fd1c3e04cbeff4f669ee5d996ad`  
		Last Modified: Sat, 19 Sep 2026 01:24:35 GMT  
		Size: 17.9 MB (17906936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca052c5ed98cb1a0871e0fd1e8e735e46df80e1afb3b3cf8468a6c267bfbccf`  
		Last Modified: Sat, 19 Sep 2026 01:24:35 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4d653eb12e99986dc94ca8c4a587f0d31fb2e7d365916d6e7100c9b54e675d`  
		Last Modified: Sat, 19 Sep 2026 01:24:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a83fe33aa42672fcef69a877f22c8a778ee1f21a8d8b22fb8dd74972460973a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1033375585580094f959f04073db11c9790a3adaf4963cb6b86840d7660f54`

```dockerfile
```

-	Layers:
	-	`sha256:712f5191361b31479167f553db15f8a2e466bf78a8919cfa6cc87e0e47f780ad`  
		Last Modified: Sat, 19 Sep 2026 01:24:35 GMT  
		Size: 2.7 MB (2739077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8654d1592880693a26b19f01527ef797b71815d83c7eb68f31ab83c1fc83fb26`  
		Last Modified: Sat, 19 Sep 2026 01:24:34 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1fe45d03e16e529e233c955a9fceba6144833ee01e57b96e94e6fdb1a06df2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213146089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a796b62d06e4d2901a42e374ac53704c9049d2f60a6c0df9a85ac9c2c50c2b31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:34 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:20:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:20:34 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:05:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:05:08 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:05:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:05:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:05:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:05:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d866b20eba167def1cd6e612f1d7dd17ba8fe02043e41bcb160cbb8bc3c90ab6`  
		Last Modified: Fri, 04 Sep 2026 00:22:09 GMT  
		Size: 158.3 MB (158274917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b73216dc27f92e9c6960b76113be43eefdc12da996ee7ad3d03d34b072b741`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 18.3 MB (18279073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89390ed0cdde7c2734488f91bbefd3f42d8de3354d1123ad1637a2eee2b63a34`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0653f868d429278821359ee196126f38cd324b7fae4eedee100c1bc971e53e`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:47723d231a635ddf972e9a7532b6101750cc93325e0a950d1b581ddb44c3849d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda2d4b22273c12d8a93d0dcfde05c2323c57b1b6ebafc6bd5271e481ecac195`

```dockerfile
```

-	Layers:
	-	`sha256:4619f60a318de990ca4990397accd8b1675de47271f93557c43f294677eaf260`  
		Last Modified: Wed, 16 Sep 2026 10:51:18 GMT  
		Size: 2.7 MB (2741259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:245ad3fe7dd20bd5c33fdb4d881bb12e444cbf3d0b08bee3c1bd17511dc10747`  
		Last Modified: Wed, 16 Sep 2026 10:51:18 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
