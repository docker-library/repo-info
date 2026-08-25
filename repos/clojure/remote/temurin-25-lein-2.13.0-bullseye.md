## `clojure:temurin-25-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:ebc1c2aa8ee33847321b96bb322a60ae7b6219a6248688afea32fe82af56a1ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:d69bf1435d4147720a37a3a9e66023eefed91aeebf9d6afa2e6c9620e744749c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167848402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add6a564f3c4e6de07c11a155058397c25c81ae78e9c6553dbddbc32760d0b98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:30:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:55 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:30:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:30:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:32:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:32:04 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:32:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:32:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878c87fb78eb1e6f60f8980b261294fd996d4d263c0f39fe8de470fdffe8c7b`  
		Last Modified: Tue, 25 Aug 2026 01:32:25 GMT  
		Size: 92.6 MB (92615071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c895e24b1d185a6a7e9f1f19ebb63e9b414cdfd8e94c53735b047e49924c06`  
		Last Modified: Tue, 25 Aug 2026 01:32:23 GMT  
		Size: 16.9 MB (16940333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdfb5ca3a072f9c6474e3cefd95e6f31adb877526dacbdb56cf7bd68ca122ac`  
		Last Modified: Tue, 25 Aug 2026 01:32:23 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88983f4728a6f3ac04a60e135daae1e58a39d5e648d377624961cb46a078a1e5`  
		Last Modified: Tue, 25 Aug 2026 01:32:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:07d929c4720ad350bb4c1ec4d7c876c59dca3e71e86badfdbaeb373fa28180ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4492639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3ad9225bff396490a75e7ed15ad5ffd55b9a3d8affb0d55e4243fe42dae7852`

```dockerfile
```

-	Layers:
	-	`sha256:39008a97f88136743a37e813ecaa67f2740d385176bd2f9de04829daeaf14262`  
		Last Modified: Tue, 25 Aug 2026 01:32:23 GMT  
		Size: 4.5 MB (4474266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b870b9d9cd1b24b972f6dc01c57dfd42dde5e4d233527cb14b88c4fb943dab3`  
		Last Modified: Tue, 25 Aug 2026 01:32:22 GMT  
		Size: 18.4 KB (18373 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1c1c7159dac61cd462947f5dad804c53c3223b6a2db2366e87b8b52b663436f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165239797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846b90d3c7cce00e5178ff51e136c46ec7e49d9328a85d72177873dcfb230874`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:11 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:35:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:35:11 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:36:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:36:19 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:36:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:36:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d943608fa33df2c5835b2748798f9ead0988365c9fe0c58c9c5baecb5538392d`  
		Last Modified: Tue, 25 Aug 2026 01:36:41 GMT  
		Size: 91.5 MB (91532212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1f2ad39399421f974911ac69446ef44c9393c413a303d42636d47300466b7c`  
		Last Modified: Tue, 25 Aug 2026 01:36:39 GMT  
		Size: 16.9 MB (16930595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6642957bca74f3e8814b86ec539ea9511400f8361e5057dc1eb6347dbcc2d93`  
		Last Modified: Tue, 25 Aug 2026 01:36:39 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f1a8cd90d898567476fe66f659d4f97bfdb3361bd96ba864ddb5ae612db274`  
		Last Modified: Tue, 25 Aug 2026 01:36:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:57674de259d487388efdbf04964e90cb8dc42139096d014dbe7ebba31a203822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4491779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a599f81eec90957677af1bbc08ae6ec4d8f2d1ef3cc671a14fc667c4acdeeebf`

```dockerfile
```

-	Layers:
	-	`sha256:86cbab03fb11059935b6cb42bd157d6f9c08931ad02894ab4d1dd1a3ce0c172a`  
		Last Modified: Tue, 25 Aug 2026 01:36:39 GMT  
		Size: 4.5 MB (4473261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04fc2e7f0c3709350f340cf4ad7b1b6f549c8b1be7f0f4b0c83a43c7bc83a18c`  
		Last Modified: Tue, 25 Aug 2026 01:36:38 GMT  
		Size: 18.5 KB (18518 bytes)  
		MIME: application/vnd.in-toto+json
