## `clojure:temurin-17-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:0df74e429f5a1bc1c0a36064f2b41e0a915c7bd1ff9ad7b611f5af63cd6569b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2ce63b9453fdedb362329631a7fce6e05d6b5589a65fec3ff8c2264b601dc32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221055480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bab1674d52a63f97f6e3dbade27a9cd921cdd413a0823894227275dfd4846a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:13:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:19 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:13:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:13:19 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:14:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:14:27 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:14:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:14:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9365f092d0a97425aecd1af5d067c340f72788b6d70e928eeaf8cdc9476f245b`  
		Last Modified: Fri, 21 Aug 2026 19:14:50 GMT  
		Size: 145.8 MB (145822656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4900a83f6183b28b3fdeec8aba381f0e84919de60bf3a69c917d6842557006`  
		Last Modified: Fri, 21 Aug 2026 19:14:47 GMT  
		Size: 16.9 MB (16940188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8383ded722b9ffac944f0e3219eac47096da336868664d54bb02e63757deffa5`  
		Last Modified: Fri, 21 Aug 2026 19:14:46 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c787590d68c5dee9d9d535af8751d30d539df8cfd5641dd9a189949b9aa296`  
		Last Modified: Fri, 21 Aug 2026 19:14:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:615fd336208ef6cf0201112248a2068bfa1bafc99c37c8b81feed699f4962422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af821fd8fb1d1052324f2ae5175e0de7396bbaa190a7f33ff1dd5f58daec735a`

```dockerfile
```

-	Layers:
	-	`sha256:f033a11c4107783454fed7db992e8c055ac6756c276972ff033462a273c57826`  
		Last Modified: Fri, 21 Aug 2026 19:14:46 GMT  
		Size: 4.5 MB (4506228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92dd63589aff4d1a5127f0a5812cf523552d34e5a7dd96c31e135b3c3da812e1`  
		Last Modified: Fri, 21 Aug 2026 19:14:46 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c7999241f18c5367d1e7c7b1b1dddb71273a542ddb246d821ee0a93e63dc6a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218354407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0545d3a46268db7be9a18b7b5b0d88c2ccd104a000a37de2647cad3eb7bb6aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:03:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:23 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:03:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:03:23 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:04:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:04:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:04:38 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:04:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:04:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:04:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:04:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed0cbc0ac7f559e7a3e175b91dac2119d33903219e0c38865cdfd60ac604101`  
		Last Modified: Fri, 21 Aug 2026 19:05:01 GMT  
		Size: 144.6 MB (144647513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0711e8822d3e936d5aceb54f40699304b3f2790764b9bed109ea741a4e0963`  
		Last Modified: Fri, 21 Aug 2026 19:04:58 GMT  
		Size: 16.9 MB (16930378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d5bad44a773005f4321fe1977af2c9491e1857643589ab3bf1016c9ee045cd`  
		Last Modified: Fri, 21 Aug 2026 19:04:58 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0051525aabc0a8f2af3d44215f19f558677b18a0715b42cf03bdb202fd28ae`  
		Last Modified: Fri, 21 Aug 2026 19:04:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d802642e106b41949dd2edce42193d29e75b3b98f23fb1e33ce0af53272df64b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ccd2dec883001d032fbd1cebe3fbdb7f2ca29849395d42c50605fb484c34ec`

```dockerfile
```

-	Layers:
	-	`sha256:03aa128e03cdc1bee4fddca93db4b67c6937dd3fc8fe4d90f7121046e94e5608`  
		Last Modified: Fri, 21 Aug 2026 19:04:58 GMT  
		Size: 4.5 MB (4505202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:671027b91602795e9e9a2dd07c192a3a4285ba07716b23ac26c0a8966ce8879c`  
		Last Modified: Fri, 21 Aug 2026 19:04:58 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
