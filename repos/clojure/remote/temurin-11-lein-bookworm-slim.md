## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:ada98a0a308a24d2da907675a5447f7f034f7667452fe67ba6f24e02e7df96f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

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

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9c0d10292e946332125b07dc1542e5a4fcfcc3faf29b6129d18d486d5ce6c464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193105798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a81569342f8527f16fd713e1015828628e20adcd2dd7098243553a992f87fcd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:45 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:45 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:33:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:33:54 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:33:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:33:56 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ea4094a20cb39e0fc19b67c951abade4308ec3f899e9dc268f7b7190211eb8`  
		Last Modified: Wed, 16 Sep 2026 04:34:16 GMT  
		Size: 142.6 MB (142566263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e487c2578dd904090921e1a607384f60442b08edc9ce7d14568f407fa6692911`  
		Last Modified: Wed, 16 Sep 2026 04:34:13 GMT  
		Size: 17.9 MB (17907014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6403b7c4417c4034a52bb1933810287313ad2ed3566239bc438f9e9dbbb388b6`  
		Last Modified: Wed, 16 Sep 2026 04:34:12 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aea9ed78671e0cbc3220519766cfae5787739ace897e8ffde1f8aa8736be51d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7095de46bfa281b9b9c4598e3046cf9b62ebaac02622b799f3851664dc5fcb0f`

```dockerfile
```

-	Layers:
	-	`sha256:bc07bbee29c6ec4b087dce36eaab200ec07ad8cb5fc6131d44d57cdc37f0b7a7`  
		Last Modified: Wed, 16 Sep 2026 04:34:12 GMT  
		Size: 2.8 MB (2757323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b8ce80b9854c866be410dc26df4d52fb43cceef75b77ac666461e5abe6ba302`  
		Last Modified: Wed, 16 Sep 2026 04:34:12 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a01bcf4acf9f9a55c92a0369d2696a6019ebdcce6748de794074558c07e178b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187961388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9ba085954d8062352fc2968cc173b180679864c72da6fd2b7f36b7a4b5d9f0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:20:34 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:20:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:20:35 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:24:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:24:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:24:32 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:24:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:24:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa7cb4ef41f18485daa208164199634908eaaea8f24ce098d672d3dca053db4`  
		Last Modified: Wed, 16 Sep 2026 10:25:15 GMT  
		Size: 133.1 MB (133090163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f2586199fe554cc380d084e8a9345702ffd595f717a66ff81a348cad11bf59`  
		Last Modified: Wed, 16 Sep 2026 10:25:12 GMT  
		Size: 18.3 MB (18279485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede8dece239d57a26099da25f30f5835a422736a336155a89b69da0636a823d4`  
		Last Modified: Wed, 16 Sep 2026 10:25:12 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6c2d064cbe181ced15731ca0ceff211e97f0b428405e19a00048007b433017ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510d43a92c274fcc16443a281abd03af49e14ab7c48f0335bd88d4347f2e089a`

```dockerfile
```

-	Layers:
	-	`sha256:d51f580ed3c91bd864008ee0d7fcfc5385e55ce1d2603602ba9da771f432c138`  
		Last Modified: Wed, 16 Sep 2026 10:25:12 GMT  
		Size: 2.8 MB (2758308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebabebd53d1b2f1314e5f4e0320de47c6b940be09db9356128c67104a75685d0`  
		Last Modified: Wed, 16 Sep 2026 10:25:11 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
