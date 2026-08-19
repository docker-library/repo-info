## `clojure:temurin-21-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:e62d1ceb123032bb1d300d0ed0f095c16e00c909f4ad18f81ce1d08e8dfb1bec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b499990afee1445997b363cb226e85757651385594efeefd53c5fd1c4c576286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208585499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aed4e7a22c48e8e6a18fe3ffc5e566e9b47ac7b1e2cad35de3d109dfcc54b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:46:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:02 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:13 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c795ebb057007f9297c916bd89df91838df21d6b09f9a4d088302432bcb3fc`  
		Last Modified: Tue, 18 Aug 2026 20:47:36 GMT  
		Size: 158.2 MB (158166957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b379eb2496d50e03e2f3bd9fcf1cd51e12f081a635b5c6111807c0bdf440e1e`  
		Last Modified: Tue, 18 Aug 2026 20:47:33 GMT  
		Size: 15.6 MB (15643327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf98a343b5598006c9cc6100b166c56ad3cb38d5d87da0433b7b7b0036013486`  
		Last Modified: Tue, 18 Aug 2026 20:47:32 GMT  
		Size: 4.5 MB (4515165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e33cd2082ac5462ccaac98c7b9a0b7deb9e73f6108909e3f4bc5ed935150fa5`  
		Last Modified: Tue, 18 Aug 2026 20:47:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:47e96115ee1918027da94313b65cd33f1cbfee1db879ef94782d87044c85dc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34d1297db847b296cd98601d697375d347959da7a4b6b91a20d86aeabd30a90`

```dockerfile
```

-	Layers:
	-	`sha256:bd7137a4282c022b429f9b945dac7eb68b9e09bec9b9df0c6d22542ac9bf889a`  
		Last Modified: Tue, 18 Aug 2026 20:47:32 GMT  
		Size: 3.0 MB (3044167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be709df3704fe5c0c703ba4adf9d3c26c8b44a4cf447a53a0babe1549f530980`  
		Last Modified: Tue, 18 Aug 2026 20:47:32 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:221faa8c66b8e5b330ab610390a0436e7ed3cb5c749178bb9277830c1f6ec4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205357230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4639ea840b0ae9117cbeb1cb2588d48fda93c15c4552c6b01c9fd9e72f6ba5aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:15 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:24 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e5855cbfeeb9f19efba3f4af41e4203d7b6d37eead9357e8216f4d7c12aeb5`  
		Last Modified: Tue, 18 Aug 2026 20:47:47 GMT  
		Size: 156.5 MB (156461249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9dcbc0504d419c5bc4b769b4697a61f2daa563bfec28b1dcceeec25ff06c8e1`  
		Last Modified: Tue, 18 Aug 2026 20:47:44 GMT  
		Size: 15.6 MB (15631474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc2c16d7138fc56ff5a476c2d054403635d19fef41d767d1902af5506222145`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bee55f78555e09faef56b4e77e4234235591eafa4832629fe24392e7e815036`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:09f9377e7db766e1f19c4689d42b6492358fd302af8758623d98ded4c0865193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3061669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dfcd98cd0cfc0b5500a6dfc826d027f3a8f2e0fc490f102314ec99b88a8807f`

```dockerfile
```

-	Layers:
	-	`sha256:5cebc08b3a26ab2154ac2a629d21e8eb6930886659094a3a6af92c2ccab05923`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 3.0 MB (3043776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bc62f26f75714b5bcd95ce48143e9df3571155f4e0f9238227cf7782df65218`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json
