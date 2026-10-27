## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:76ab18a6a7fe57064ac957856e450d2dad1d5f2f1c3fb81d0006859add6c563a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fcefa1f4133fd9a097e302c16067ab75f8bc585d08bd47c36835f202cd5351b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218995857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7b8910465ff85454e530b402128dd8967288c53c14502a6e239966a97e61f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:47:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:47:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:47:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:47:47 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:47:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:47:47 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:48:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:48:57 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:48:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:48:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:48:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:48:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24f9ebef1d9ae98571c28db5ab764c5a76dc5fa23a9fc5dde24862036d06eb9`  
		Last Modified: Tue, 27 Oct 2026 00:49:18 GMT  
		Size: 145.8 MB (145825445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd42867e40faea4c293518e3bd10dc34b85732f203cef674836e2ae1d832881`  
		Last Modified: Tue, 27 Oct 2026 00:49:15 GMT  
		Size: 20.1 MB (20132682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b4c90511e09475dc499ddb3e7513c7e327a9b66185294512c4853563bf2853`  
		Last Modified: Tue, 27 Oct 2026 00:49:14 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f713ed08781afa6708f829474ea55e201e3e47d16300c87c3aaf71b1c176bd`  
		Last Modified: Tue, 27 Oct 2026 00:49:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:18e2087b4fe3ea8b9f5f4232cd0fbdf412945fb69209d63d614539e42aa67662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc13cb55559649a11cbb631d3c844c57cda059802a88e944002d419fb4a3002`

```dockerfile
```

-	Layers:
	-	`sha256:172f0b1623d6cbaa686839e45a57da23864579408e8cc378842ad5e8381c9195`  
		Last Modified: Tue, 27 Oct 2026 00:49:14 GMT  
		Size: 4.3 MB (4288004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df1c8ffcd6723d68cce4ea761223b937f28ee4ea89d901e5c11a5e0f502c1ec7`  
		Last Modified: Tue, 27 Oct 2026 00:49:14 GMT  
		Size: 17.7 KB (17737 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cbfbfb52cdc7ae13af908ec96d13aa1307ac7ccd599631756e215cf18a0014f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217543405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bec5cfee1fde849eddb1acf580bc36237f2952e724397c60fa3764a5d7025e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:47:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:47:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:47:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:47:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:47:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:47:49 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:48:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:48:59 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec04ff89687f914aeecab402195d227967a2953de3da86f64c205c4bac723b29`  
		Last Modified: Tue, 27 Oct 2026 00:49:23 GMT  
		Size: 144.6 MB (144648250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39db00a496fa5305642885ed7e3b2e27445355c945ae986078835784943909b`  
		Last Modified: Tue, 27 Oct 2026 00:49:20 GMT  
		Size: 20.0 MB (19976390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e917828f8f9c57dcebe3b0770c81bfc7e7e89d9854fd616dad1a2f4a0e8d70`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25fa1a1775379b9d619c5642ec2f1ed5b4f47f298851db54301c011dfe7489b`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:26badda5f8c6732dfd8865e82ba0cf395d11c9f91e0777c6480962b10ee8210a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913b1f4a64e544eab423df5ff69825f8735a1bc9822b042fb2b673ed31ae0456`

```dockerfile
```

-	Layers:
	-	`sha256:9c620872827ee1e48e15eeac6245f03b26fa94910a4bedf7ceec4d4792989065`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 4.3 MB (4287619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf35b191073cd26b8fac636b16e4b02a469e8ccd44b2ddf7a48a90de00d02712`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f47c970c917796c8b20502d3664024b9628783e0e918eb67b29e715c96bac98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222908533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb916748c50ad6b67b905526457b967dc9ac99dd19649ba5093f2aaae8f1a3e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:16:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:20:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:20:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:20:52 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:20:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:21:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:21:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:21:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea6f73d5f87fb8cbc44e08783ad3fedc78cf9317e46c84752e25a778f0747d6`  
		Last Modified: Wed, 21 Oct 2026 10:22:02 GMT  
		Size: 20.4 MB (20356650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a1044399800de8070bb9769f314af3a571a87cca4bc323846dfd67eece5193`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1d60035277a03af11de013f97d085e5ce04a4af1bce0ec03df03719fce1f1d`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:70993cf97ce839df7542e6dd07bd1b8f1903162ccfd2e3a6e1c258ae847273e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41ab23a92d7fad7adf0d445d85589e68fb37e183a3c790e9f3cf4c42fa33d1f`

```dockerfile
```

-	Layers:
	-	`sha256:b98b8f7d25dbf5c3a69385ca1b63a7aa6c785efc32b4a347f023796c4a5ef02e`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.3 MB (4289865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16dd947db815e4cf7f40c2f82d3fcfb6cd41d4fa82ca39ad4c03ce30a8bfbb69`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 17.8 KB (17781 bytes)  
		MIME: application/vnd.in-toto+json
