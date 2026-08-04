## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:137c30fa37cf0d13011c6f14ada18da9eac9fd7ca8a50c6ca35ab3d1665b1624
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

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:74ab79a2db99ce8e981d409e865ba0f6181eedbc40adb2b9404c817d58f67da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209218221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fe8b537fd2f47b6bdd6cee2e6206bf02d0328428f7c21cd67682b263277b0c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:51:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:41 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:55 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05567e1034000f9eb721d4b01ef58bf0b9eed514cc26e406a3cfb4a3598592b6`  
		Last Modified: Tue, 04 Aug 2026 02:53:18 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fd11541e2d2936d227c84b9a7d8658f2a694d8378ff91c8233deb6ecbd3acd`  
		Last Modified: Tue, 04 Aug 2026 02:53:15 GMT  
		Size: 16.8 MB (16754717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16021c32cc547e38b89c09b88a56220e2cfedb06ee3c2a0c2b46fc73f2d5b3b9`  
		Last Modified: Tue, 04 Aug 2026 02:53:15 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1c891da0ecdd760548a46f08ad37f55268b7fc1c17e0101b8b39da1d803db8`  
		Last Modified: Tue, 04 Aug 2026 02:53:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cb3985b0c09253c015ad11cbd4294dd043636b6203c7647f2ac5aa9b6c82f7cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1dfc017475e94774f9f368781fedea45f4652191db90f5e509db3e7a55ca33`

```dockerfile
```

-	Layers:
	-	`sha256:fc6a9c1f555cb09e2c0ee33ec16ba57c857d14eb8477d4c266f8fae3c8af13d3`  
		Last Modified: Tue, 04 Aug 2026 02:53:15 GMT  
		Size: 2.4 MB (2368969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a965d91a9ba6e93df99bcab36b9d8ed1aa1774a99af3d2cf74ff21ecf3b1cd9`  
		Last Modified: Tue, 04 Aug 2026 02:53:14 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2034b83f50eea0fbfe4f7a21f14358597d779690a3f6fba579e70ae5112f3751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207832352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69d5dba67bb30fe700162726f49fbff3dbc3682a2b9b5f2fa6d3203964c5636`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:52:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:52:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:52:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:21 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab689dc9f9e16d88306894bd91c455c2e049f1431ba372e17e887822fbde27d8`  
		Last Modified: Tue, 04 Aug 2026 02:53:44 GMT  
		Size: 156.5 MB (156461330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f169334504c53b8d3f70c1ae649ff369b00a7ecc270bca40497646245c275640`  
		Last Modified: Tue, 04 Aug 2026 02:53:41 GMT  
		Size: 16.7 MB (16711660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e303f7000e749f2848b0467c9f388cb3797c13c7ce9c5b11393204370a60a1b9`  
		Last Modified: Tue, 04 Aug 2026 02:53:41 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b25965df2704a86755ab1e9f18fe342d18567adf8730663ae22a831ae373c1`  
		Last Modified: Tue, 04 Aug 2026 02:53:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cdfa09e14e395dd75218c39dddc9670d58c8a54d03f8ce647b78274e26f071e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc214b098eacf043b1d2dc3736b87441d5ac8945a3e648423acad13088bfc90`

```dockerfile
```

-	Layers:
	-	`sha256:38d69855b89b2e959d0e91dc27dc556ef66ba0350fb5ef3056b0f804600ab57c`  
		Last Modified: Tue, 04 Aug 2026 02:53:41 GMT  
		Size: 2.4 MB (2368579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6202dd60d6ce1ba10088662eeb87adb5a6103f43562708ee92accadf2dfe7442`  
		Last Modified: Tue, 04 Aug 2026 02:53:40 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:38dfe8cd96155301e4600c7fa78009e5353641c0dd19685186d7087771916238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213242583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38232bc3a86bcab53782fd9b29e861fc6cde598b607f239dce7e1c249868705b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:29:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:29:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:29:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:29:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:29:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:29:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:32:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:32:31 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:32:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:32:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:32:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:32:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0ccba3f4764e4f97d5f565e01d7d626112cd4244ca4ba353e8284261ac0900`  
		Last Modified: Tue, 04 Aug 2026 05:33:18 GMT  
		Size: 158.3 MB (158343264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1adee2ab68a22a1636e48037c9c7c7d25d086c7626dfa1b1151c04f238907669`  
		Last Modified: Tue, 04 Aug 2026 05:33:15 GMT  
		Size: 16.8 MB (16782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879d76efd3d78f5eb89b1816da2ebad00862f1944b87983b359552739467b902`  
		Last Modified: Tue, 04 Aug 2026 05:33:14 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee7d51106ddc8554272c30c608d8d854e27a4148dbe6546267dd51e17207cdb`  
		Last Modified: Tue, 04 Aug 2026 05:33:14 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:449be8158b2e94bc5d852edaeac23de3d4d50207e3a39d6ac0375feb5280a813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4b3f1a07e3c25857a9177bc9f8e5fe97d20ee5e2a310246eeda3af95346196`

```dockerfile
```

-	Layers:
	-	`sha256:0054e4ab028e61ecfbc71a6204f59e55418a51fc16a5b2afc4f88a20c7aa7463`  
		Last Modified: Tue, 04 Aug 2026 05:33:14 GMT  
		Size: 2.4 MB (2369949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e18e5c0aba4f6e67c2b622c36dc60b324688210659b7f2b79921b7e305712413`  
		Last Modified: Tue, 04 Aug 2026 05:33:14 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:ac4ba897b9fbccb8995cda7b23be6140bc98cf835040ecc0ef6a9192b4f78018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198530349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bf679af463b7c979c2cdb3d0e31139b342b977da72cdf3cc4b26f7640afd65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:59:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:59:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:59:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:59:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:59:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:59:14 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:00:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:00:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:00:21 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:00:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:00:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:00:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:00:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c734b870786825b7b1c5032f0cd26771e82ba1a29e2d88cbda25956695222bf4`  
		Last Modified: Tue, 04 Aug 2026 03:00:50 GMT  
		Size: 147.4 MB (147388318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d1419d17ee295a79d8a46a74b1b37f0618460da13ae9c9535b7d7c22a13c05`  
		Last Modified: Tue, 04 Aug 2026 03:00:47 GMT  
		Size: 16.8 MB (16779766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a88b0296a339e54a556f2ba6cebefea75bf3ff21c43c69b5b3ee9b92fd5ffa`  
		Last Modified: Tue, 04 Aug 2026 03:00:47 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f0d17137ab1d18a0594248b3173ee004c3d456dcbdc07a9a9b41e6a0a67b61`  
		Last Modified: Tue, 04 Aug 2026 03:00:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e2bd054ddbbcd01bbb10dfc62f91029c712567d3ceaff65b6161f232625e72aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5304abb3467fbd7bde671e109b99bf9957f731f59e79ab47ef643ce4e672e38a`

```dockerfile
```

-	Layers:
	-	`sha256:47751d1014ba09ff4f76cffe4a00dabafd8eebd410eee94be759be149bbb4337`  
		Last Modified: Tue, 04 Aug 2026 03:00:47 GMT  
		Size: 2.4 MB (2365396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da78d6def56b4de2b2f0c09659af22800517503667b3c8092bc482bbea3f0596`  
		Last Modified: Tue, 04 Aug 2026 03:00:47 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
