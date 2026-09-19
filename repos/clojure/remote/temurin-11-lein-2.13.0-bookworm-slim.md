## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:933a0b72e42d83979e15e41fcf5e5092371060fd9dcac84a671ef562607592b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ca1304ec5213d45ff8534aff7d79d6b9c7ec26c3b0b18b75bbe97e481f311d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196701051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b51ffc24de3e645935054f52bdb6aa173bc2221e6a23770556897fdc4eb49`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:13:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:13:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:13:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:13:23 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:13:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:13:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:14:30 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:14:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:14:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dbd7713dbef1ea7b922fdb12d324fc85c140512d31fdd05400633df7eb80ac`  
		Last Modified: Sat, 19 Sep 2026 01:14:50 GMT  
		Size: 145.9 MB (145861346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1dfac4481c0b1c408febc05c5f4aa2611cef764daef4eff63d06db7ac4e1c2b`  
		Last Modified: Sat, 19 Sep 2026 01:14:49 GMT  
		Size: 18.1 MB (18086064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aa5bf11eb406ac8acfc3d2aa054555c53bad6dcd99e0cd72a6662a32dbaca3`  
		Last Modified: Sat, 19 Sep 2026 01:14:48 GMT  
		Size: 4.5 MB (4515166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:65c002fef59ea56061787608b0c5c3a3e4c14eb97587e479eee9eeda76e8ec62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe410cd8a9c3d6450530c725e9e4e5a4a7dcaaa80ad415a2d35f55a9846da41`

```dockerfile
```

-	Layers:
	-	`sha256:11e5b2845c44c9458cd430f578076a1f934ef3675a57f29ac1ccf101ef59af87`  
		Last Modified: Sat, 19 Sep 2026 01:14:48 GMT  
		Size: 2.8 MB (2757126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cc788cb8558083236bc7976005c3166b2c56ce6dbf16c6c96fe3343abb9e446`  
		Last Modified: Sat, 19 Sep 2026 01:14:48 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:49f9c89dcd637771799866d738511e164400af58c7910e173753589c73b1a0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193111867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab7c243c6bd229097c6fc00be33721ad039fd3afefac8df80304b73e81ba6c6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:20:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:20:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:20:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:54 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:20:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:20:54 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:22:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:22:02 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:22:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:22:04 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ce86a087b9ce36ad6aff4f2beabc93a733008eeae521f4cc9dd67e9472b127`  
		Last Modified: Sat, 19 Sep 2026 01:22:23 GMT  
		Size: 142.6 MB (142566295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c7f16c905015a8f1fec9b6ff42d8137f065900358c620a22ebfece7a3414a6`  
		Last Modified: Sat, 19 Sep 2026 01:22:20 GMT  
		Size: 17.9 MB (17906682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcc1324a08b73cfee524920407158dbbabac5351dddeb3ffe5f9e83e6e0b063`  
		Last Modified: Sat, 19 Sep 2026 01:22:20 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1ff278a6dff5179b4b4355fa2052c1bc547ce75efd1292c9955d5507d563da63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abca3c8598cee0a63b37ab33b8c1a711024064823711ec5c5932babc2f72e6a1`

```dockerfile
```

-	Layers:
	-	`sha256:20d70d737be702909169a3d44554fdf95886f7d20d8385c1f322a5966f61037c`  
		Last Modified: Sat, 19 Sep 2026 01:22:20 GMT  
		Size: 2.8 MB (2757359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2d4dcfae603a3157911ea016048b65cb5776c251a866c8b2209037f57ed627e`  
		Last Modified: Sat, 19 Sep 2026 01:22:20 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f57f8b4537a54af8e6275e1debbe9d6b177e788a6e6f2fc4b69dc8a329fafd2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187968262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ad2255b1cf07bc10609211a67a78561fa4c3eb9ee92a055a6dcc4cca50734f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:39:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:39:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:39:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:39:49 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:39:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:39:50 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:42:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:42:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:42:48 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:42:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:42:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7832be33f5be5ca91512a73659985bd243d53c718017818675483432c66cc8c6`  
		Last Modified: Sat, 19 Sep 2026 07:43:38 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99e849f12f3e3d3b9fdf2dd3461273192c1ddd5e7a7b7887005d980dc4a5548`  
		Last Modified: Sat, 19 Sep 2026 07:43:35 GMT  
		Size: 18.3 MB (18279316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34fb4f445b3fc5d026e947015e7b4e662d96f5736836817f9bb85c424dd019c`  
		Last Modified: Sat, 19 Sep 2026 07:43:35 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6b2b880cccbae2001b6b959f4d48e60c38d8a91e22787ccf92b8257943392456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5edb4ffb6f380ed28a62817822b7eeb79f68f12746569731af47c49e22e1c638`

```dockerfile
```

-	Layers:
	-	`sha256:cc718d0948063eaf382ba9b5ce1be8caa22c284457c61272c0a75abfadc55558`  
		Last Modified: Sat, 19 Sep 2026 07:43:34 GMT  
		Size: 2.8 MB (2758344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86edcf7721913141f5ae2f2559cee9483d061e7cc45635e38bf32d92ac4df7ce`  
		Last Modified: Sat, 19 Sep 2026 07:43:34 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
