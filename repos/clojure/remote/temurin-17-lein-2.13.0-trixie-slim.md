## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:f43a4474a8696c86bf5f8894184b9bd26a8e1b56b293b79b46591b716cfb6c93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:cb5f074737742bbf47fed27e4c3dbc956cb2c1890ad8db02cbb272431cbe4a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196926317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479c4722e75cfa6bc4d3a8ba43631bee14d4aee705d702e66661b161e8acb196`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:48:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:29 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:29 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:43 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b6424d1bb973bd5d6f2c33df4baae9e0a5623412ba799636bcf7f6a464ddbc`  
		Last Modified: Tue, 27 Oct 2026 00:50:04 GMT  
		Size: 145.8 MB (145825445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116fb753174f6b60c871abf60791025202a9f9b9d26857cd754f5c616f969250`  
		Last Modified: Tue, 27 Oct 2026 00:50:01 GMT  
		Size: 16.7 MB (16741644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eedd83eefe6797fda0036a5e9bb17d3d2e18b1f8d730b2e21274774de0df07d`  
		Last Modified: Tue, 27 Oct 2026 00:50:01 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c9759589d007c25282365d22f30d271cc24aa29181774c9333b8ec53e6a4d2`  
		Last Modified: Tue, 27 Oct 2026 00:50:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c0867b81f506fe001542d19558e7cfc31f23bb9f193e66554207554f5b69907f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93de88cfe676d321276d792fa10a96aaa35866340d4006faf31012f53bc185a3`

```dockerfile
```

-	Layers:
	-	`sha256:5e7da5b2de472f1dddd56eb1b4b09e6c00ea8ecf93c081ec78ea21411ac3a8be`  
		Last Modified: Tue, 27 Oct 2026 00:50:01 GMT  
		Size: 2.4 MB (2371754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7237385b7531d13d8df8563db5049ecb6f2b393c25a28679a3c44e7efc0eb19e`  
		Last Modified: Tue, 27 Oct 2026 00:50:00 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7f4ee40c17df259811b4d6ec500472c26ca158e9ebf1b2a13e25dad059e9b2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196082146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47158997251b82f57b1da10ed6b6861e3e1e5be1796791302947faccabfbb6c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:48:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:21 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:21 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:39 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b057d7c235d5353b518b51145836cbc504d74f31c83a225ee00f3fa5bbea7de3`  
		Last Modified: Tue, 27 Oct 2026 00:50:00 GMT  
		Size: 144.6 MB (144648250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7085b815e7140f0124052cbfc5fd586a6540155af547c65667fb910b02efbc`  
		Last Modified: Tue, 27 Oct 2026 00:49:57 GMT  
		Size: 16.7 MB (16717801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f219e62c947d4a0e3757b5f163848e51a3bc78087a0d0800983f42df778902`  
		Last Modified: Tue, 27 Oct 2026 00:49:57 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028aa8c2996b07cb12a5ac6fdff87d8cc88770d09a3b5508d1aedca0bb5f72d9`  
		Last Modified: Tue, 27 Oct 2026 00:49:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a4b297030d8596734d38db4569508a468f64b430a7ed786a273c157667007193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70d53354545e6d13b2d5c1cc9f6726448319c2602313e7a95663e33387c2954`

```dockerfile
```

-	Layers:
	-	`sha256:93dcad88521b71fddf6fa8055640cf071eb80db8529f67514772c82d3bcf6486`  
		Last Modified: Tue, 27 Oct 2026 00:49:57 GMT  
		Size: 2.4 MB (2371364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f21c37d29dd84b8c6c695879df62c37db22dbde5879512ca9f7f5a089638620`  
		Last Modified: Tue, 27 Oct 2026 00:49:56 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:55a58b8c62d240cef18c5e8315ab0a08f29e2aa4a3019683b36051150ef77771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200618306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452a339ddb532d6264c84d9ab7e4c0d0ba195d45bd231a61275865268d143b0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:27:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:27:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:27:16 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:27:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:27:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:27:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:27:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92211fd462ce15ba3088453f1811460f451ce282cd2cb480d2f4387b6c0265c6`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 16.8 MB (16779183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803b9a3b252a137c796fb7818aed54f2f0985b3d0bbf475a74eb3894d6482f67`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a680ef88cbd70e5618b8b51ec3bbe9d63da006fb3f67e765ef745530876257ee`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:de1391db57e5f658ccc682d469fc10018e6c7dd78920344adf789a739b312460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7641392b9304dc1165f177f64b5429acff2c46f8e145e8e039273ccfd6a2f942`

```dockerfile
```

-	Layers:
	-	`sha256:f7e5c1c6b78629156a63fdb2cbe519dee8c201b5c2b8d3f3d339e11957721e99`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 2.4 MB (2372734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4798ee171556953ec1bd966040c0371d8121822b9b8919611fdfcce2fedf490e`  
		Last Modified: Wed, 21 Oct 2026 10:28:07 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
