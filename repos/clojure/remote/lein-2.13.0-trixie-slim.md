## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:838424f68b70b7b9619cdaaa535e7df44285ddb41475c753c3f09b2bc7b79224
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
$ docker pull clojure@sha256:92b05b84dee85c902c049f73b053599b00ebfde199e884a2f111847c63027c9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149027059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27774c3ec0547573e1212539eeb1f03fd89139d0019732389c4ce85ea321d246`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:36:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:36:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:36:50 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:04 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:38:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:38:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfb613f5b4d5c972976fac32df8b16c22a4493507eb7d55548de15df323a559`  
		Last Modified: Wed, 16 Sep 2026 04:38:23 GMT  
		Size: 92.6 MB (92615111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029bcb4b54431fd7268f8acd2c632a9d64094bbd50d672d19c8cf60e0e039a43`  
		Last Modified: Wed, 16 Sep 2026 04:38:22 GMT  
		Size: 22.1 MB (22103692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e689f1c80d1f21bde3a442c0ab2fe9cff4f9a0769a8daf161625e0a18041fb56`  
		Last Modified: Wed, 16 Sep 2026 04:38:21 GMT  
		Size: 4.5 MB (4515167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711d6c845757ffede370be72cc0681c6c1c59d105032f92944c9c3cff015dc41`  
		Last Modified: Wed, 16 Sep 2026 04:38:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:46897a2b9e35d49d73cf6ddd7b29713fc98a1cad1787ba1c103d931149daec97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:832031b1867558ea333e0850bfbf2ec3dc217d5489a05bce332bc7890b5e76fb`

```dockerfile
```

-	Layers:
	-	`sha256:32b64119c6ed41b33b68b1f7711142316e6a4eb3a9b2404d619bb3eb668a6cfb`  
		Last Modified: Wed, 16 Sep 2026 04:38:21 GMT  
		Size: 2.3 MB (2335399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbff3e8e66e95f3fa7bc852bbda6e691948024987715aa244ca2e6b0a6d2fe7e`  
		Last Modified: Wed, 16 Sep 2026 04:38:21 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:068d91844751923f8e1e9a68e53cc700c7967f70187089ddc1b8ab10e0fecf73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142949416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ad89746243b56e2f70c8c55ab8113397d845fa9b64dd4bddb354dd58a98e93`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:24:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:10 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:24:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:24:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:25:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:25:26 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:25:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:25:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6fa9ddaf066b423f26866abc9b80e4720810b1bb4bee3d96822ad9cdb710a7`  
		Last Modified: Sat, 19 Sep 2026 01:25:46 GMT  
		Size: 91.5 MB (91532237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7289d6131b6032252b1074e5ae23e6f4ba1a16f138b8bfa6a6aa468c4941b8`  
		Last Modified: Sat, 19 Sep 2026 01:25:45 GMT  
		Size: 16.7 MB (16711878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d619172b4d4ec366c284a3d7cb778948b20f04cd763a890741ab0a9bdccc8ca`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fee925c14cc35dfb481b3b990d4c8a82b291961dd891229c7a21c4bc9ac6b2d`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:80968931cbebafd904ddd7d03ac7f7aeaa634d0a8631f2241c9496ec60971e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc00d508f5fba5e0ef9e9127a5261a6f1efe49af8070f59d473b37ff8bc5947`

```dockerfile
```

-	Layers:
	-	`sha256:f24e3d36e60e71a8f157a43568dd118a6e3cf6d52ba156b774f0e8410abd2164`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 2.3 MB (2340704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ea94429ef7ff382806107a503cb8af0fe0c9a14823412f92083b24757f092d`  
		Last Modified: Sat, 19 Sep 2026 01:25:44 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:83896b21110c8622cf21427fd49efe4aab067ba0e7288a9c7a83a7e9bb750536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149377439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39a94f0ba236afbe91d54e12e2c1b7c6a971a028e3f886eb444ee0bca7b8a6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:30:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:17:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:17:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:17:31 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:17:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:17:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:17:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:17:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8084f28e02f46493ed99594a968a5e403aed0d99dd596c6994e2e5a127d449cb`  
		Last Modified: Fri, 04 Sep 2026 00:32:39 GMT  
		Size: 91.3 MB (91255818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da14409563a897d7ea6671f002d57c418da73c1fa92a640afa07dd8bfc424b6`  
		Last Modified: Wed, 09 Sep 2026 11:17:59 GMT  
		Size: 20.0 MB (19990517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06919234443e1e5e6403e46f16ad8d8f663f3f777173aa5d904c752658d1fc86`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bc5e0d4106cc3388ca89d0c5178d0e3d2c707edbaf39e31daa0c54fb4c5cbe`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:da669e3eb45398547461b62f311574927ca3e5e80952a9250f20f62643ed2e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf79485b25759683fde182da98e67b818a2d68190f7aa1b3e4ea90697e9223`

```dockerfile
```

-	Layers:
	-	`sha256:24373705d67b3c28d59cd2a6745ec756bf9f72a5451771c50667b6c491d7b830`  
		Last Modified: Wed, 16 Sep 2026 10:57:05 GMT  
		Size: 2.3 MB (2319667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:257ef5f7ffd9098431c27bead18758898cb3a857e63fb5b5dbc2628db9ffb99e`  
		Last Modified: Wed, 16 Sep 2026 10:57:05 GMT  
		Size: 18.5 KB (18454 bytes)  
		MIME: application/vnd.in-toto+json
