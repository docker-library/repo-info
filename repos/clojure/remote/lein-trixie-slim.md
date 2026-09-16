## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:cdd60475a5aab6cec24e6b850e9d8ef844a4695a477ad40f718806d57b1e9e29
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie-slim` - linux; amd64

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

### `clojure:lein-trixie-slim` - unknown; unknown

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

### `clojure:lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2cb724a669506a394bba2e2f0a0df6fd148398f329f445b9da619a36719978d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148585560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f3638c96e811debb4bc481f7cf78af2c8117858127ff0f12ee5ef6b1c4a5fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:20:30 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:20:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:37:20 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:38:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:38:43 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:38:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:38:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79ac9c5fc570c1ae35b1fc45d7943a8c5f691f7ed1793e7223e7eaa24fe571e`  
		Last Modified: Wed, 16 Sep 2026 04:21:25 GMT  
		Size: 91.5 MB (91532216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e3f654edbcbdc87a477164a478b927052f7f369d22baa7e9f22a1f3e3eb4b6`  
		Last Modified: Wed, 16 Sep 2026 04:38:58 GMT  
		Size: 22.4 MB (22378116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f933aa4e73a4a2e8af53df5232c96841d7b27378a2573159255f916b202bdd`  
		Last Modified: Wed, 16 Sep 2026 04:38:57 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5be8dd5e2d7da17f47e790a038186633ec233c99184c1dc84815113ec5c3255`  
		Last Modified: Wed, 16 Sep 2026 04:38:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:897506390f93c34874626a08a7a5cf65fa3062ba81a9386c7efa30bf6126e07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a079e44d2d2134b9c9b68e7826631205407cc59b21d8e7969acbf6ce636aafb`

```dockerfile
```

-	Layers:
	-	`sha256:64f2fac5df098fa89732a11f466326242297a8ebae8feafa5d2b14d35c5ec2d4`  
		Last Modified: Wed, 16 Sep 2026 04:38:57 GMT  
		Size: 2.3 MB (2335030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32b3af6a2b8c5318902b193115aaa4c853a571e556ab1646eaa0d93523efb0f5`  
		Last Modified: Wed, 16 Sep 2026 04:38:57 GMT  
		Size: 17.6 KB (17592 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d273f2d800d75665aae5aced3ec00b747ae59bfe3e05df4fc6512b6c50e73afa
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

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6447ac73215c7473a881be57b50fd161f2937e912aa4bdb127e76b975b7049df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e210891acb49243e11050c92abeb1d3d260190cac4a119c1ae14822815d2f3`

```dockerfile
```

-	Layers:
	-	`sha256:4db8f9faf772722e95fe8473dcd2bdd388dde14b0c3b0e2af7e1887bb5f5edc8`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 2.3 MB (2319667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04b9f2e9de86b97e410c3bc8afa8cc51325fe150cebf2ee67ef92b345ad15b3c`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
