## `clojure:temurin-26-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:34121943219e7040a6999dbcd1bb7ab5b993424a5478702b480ce040b00476aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4a7face4976b1260076269fc710a7edec8efbde0570e2d8bbd01e92666c76b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144944033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bcfb5c802569b9c9a69116a52138d719010886309163775d68f165d3128790`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:25:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:34 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:34 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:45 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761f25d989bd1a0fdce3e1d89fd9b3b13e44af6f18588cc663b5ba2c2755b248`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 94.5 MB (94524379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d52e8e22e338cf84eca0f475ab7d429abe9ff52b35c94d9695de0e362fb159`  
		Last Modified: Wed, 05 Aug 2026 01:27:04 GMT  
		Size: 15.6 MB (15644420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0baa2dd02991939f9eb39150b5b0574ec83c13fa5597b8090953561cd4da801f`  
		Last Modified: Wed, 05 Aug 2026 01:27:04 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11c71316385cf124a6e999163a1be525edf9bf9e2daa581c52931a377e814c6`  
		Last Modified: Wed, 05 Aug 2026 01:27:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:503f9136056398af0b543762f5f752e9a11c3a41cb5496661df38d16d2e0f2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3627acd25947c875b40dd38a9cc798ee8e3cd29173c8e86e0610ff2d53799e4`

```dockerfile
```

-	Layers:
	-	`sha256:4b921ffd792e68a71b8bbb266fe952fa61d3e00c64ae98b819c5083a7197b541`  
		Last Modified: Wed, 05 Aug 2026 01:27:04 GMT  
		Size: 3.0 MB (3002003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bb36a091cf3b315e704ec3c6c67a85fa1112417a0ba5b3ad8e64a2deff566c5`  
		Last Modified: Wed, 05 Aug 2026 01:27:04 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d7ce4be68e4e331c60a686f57052c8585da960765d30ee64d60e3ebd5830d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142388692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e35e35b633ee6fdba58ca2524714ad1e09403f0fc37f4b93f38be61d17902d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:31:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:37 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:31:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:31:37 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:32:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:32:44 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:32:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:32:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f21ff6c14f9b5a8c87af8c2c0ad9be9ab02a312f92014270fc53ce61f6c57dd`  
		Last Modified: Wed, 05 Aug 2026 01:33:05 GMT  
		Size: 93.5 MB (93504366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4867c3be3240318ff2a90313615b2f9605c55d9754bc73dbd41c46f26373a7`  
		Last Modified: Wed, 05 Aug 2026 01:33:03 GMT  
		Size: 15.6 MB (15619761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf594ee5ad0801c641000b20cb51abcaf5430acef9ca075c21a47808833064c`  
		Last Modified: Wed, 05 Aug 2026 01:33:03 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64295eb88777e0f799fd69dcf0a78d3d48f076de9aa69d121b5ebc064f646c7`  
		Last Modified: Wed, 05 Aug 2026 01:33:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b6304668cf4912ce7b427525917d0bfe89b44b6fb2621ec10cc9185e91ce59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa1cff2aaede085503d6e0fa46497321484e48f79ec88b0cf38f3f2e413614b`

```dockerfile
```

-	Layers:
	-	`sha256:28dfab7797dac2421552be848d9a602534cba188e3db2683f8931e48474019aa`  
		Last Modified: Wed, 05 Aug 2026 01:33:02 GMT  
		Size: 3.0 MB (3001609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:123ed10f678dbee9ac5993692a00775674e09c9c4d30355cef6f8db6dc67fca2`  
		Last Modified: Wed, 05 Aug 2026 01:33:02 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
