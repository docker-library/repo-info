## `clojure:temurin-27-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:88be405bb7f79d964b565f115d95f0f488544798fa16d706d0b3840b24c2cead
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7854750a144a9f1abedffddf2b7de52b35c04f4ccc7b7e9b4dc4c0a5ab1dabc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144458996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d023a65969cff854a03b7afac4400ef52386d18e71db28b20242c4496b04e68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:52 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:21:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:21:52 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:03 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5925ff7107613384c973ef3324ffad41cb802eb5efddaee4b9b86b6624233a5`  
		Last Modified: Wed, 21 Oct 2026 01:23:26 GMT  
		Size: 93.6 MB (93622452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6199cd00e899dc47ef90b010d05559e5db02ecf64cb7018203bb249c7d418a29`  
		Last Modified: Wed, 21 Oct 2026 01:23:24 GMT  
		Size: 18.1 MB (18072995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c70745b6b5ff26c66e7e7d952da4a3e86d2ab3778ed58a14776da37ee254722`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483b73bc109f75c36da090e5f026a83036e9cf35690680cbbe3be2374db0447b`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e3c02f0f1429140dcae72eb20523c4ed16905eb5708366c48ecc802522ad7c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a988671d4b9f5488d13e7a81024f14fbdaae7b2009be7ddc0108d090bb0b2d01`

```dockerfile
```

-	Layers:
	-	`sha256:ff23e7bff6e3c127b1f17d1b841566052ed37e5305f22e146177355d53fe5e02`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 2.7 MB (2699947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ab1c1d9092f73e2a781d185c5e308d723dcc62607fabb99814df8bdc54a34cc`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:695edc189679f5ff801835054da987f59f281f70365350aff8e7f3d6989ec4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143193887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38a848a3d02fd7c726bd0110f3c86783aee16569960eed23f0181b859e5c37d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:15 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:28:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:28:15 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:29:28 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:29:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:29:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79b74ebb854831252c0a08b6634b2ffd9776014e302a8d15f65d8fe253e2cc6`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 92.6 MB (92633129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28ff5f2b6b5bd930e6db9c417184c6eec8f8deaf6c0e814ba781b9836defe4e`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 17.9 MB (17906703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f2a71fd128bf23e95b1455f5a7afbdc1366c9fa1ab0f901de89a598f1498de`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d9c3761978fa67a4477a096f401a2b9c0e9d01195ecd6e5335d7dbfb2bbc58`  
		Last Modified: Wed, 21 Oct 2026 01:29:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a2058de2461660c60822ba429dbebcb95b70d5c6af26706bf34a02de7d13c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb188dd66d979c3fe6b9723a69cbb98f154cbabf69e9a4e16e11c86958c0b369`

```dockerfile
```

-	Layers:
	-	`sha256:afe8fd1c00498449d114bdec31492b927dbf155995d676baebd8a765e12859b2`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 2.7 MB (2699559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b9febd57132c124890bb59bace58f719880c2b2e83ed466d86dbbd61fa543d1`  
		Last Modified: Wed, 21 Oct 2026 01:29:47 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e573c812c1757fa91913763506d07e13672dc05c94d6a05df99b49b7da92116a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149599447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb851bc48a372db2ca789c16c434e336f7af4f6a7facbfaaf386b05f8f97cfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:20:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:20:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:20:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:20:58 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:20:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:20:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:23:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:23:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:23:58 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:24:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:24:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:24:03 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:24:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb2b8835072278f513221af23f0b3665df65ecdfdf91aec3478ef9ec12499d`  
		Last Modified: Mon, 12 Oct 2026 18:24:41 GMT  
		Size: 92.3 MB (92255814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d44901dc1f5b5bf4aba32592ff5af9c4c3ac8f111dc3d2e10a40e0e7b785875`  
		Last Modified: Mon, 12 Oct 2026 18:24:39 GMT  
		Size: 20.7 MB (20735553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067b6bd262322c2df890563bd15c874d120b374d5772160362043d46e7d89a23`  
		Last Modified: Mon, 12 Oct 2026 18:24:38 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0662d159649fc2078fcd74a999d9ff2916d1a5d19b0c7188b64e4bea07e26998`  
		Last Modified: Mon, 12 Oct 2026 18:24:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6e54c79aac026a13bb3b9453fd82f8dbef43c0c9b82df2b7ee0d74871a315fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074e45306d97ec9fb7af799718950448b71eb347d6026caf555962c88ef8d219`

```dockerfile
```

-	Layers:
	-	`sha256:b0946535a47427b8511e23d7cd5a6438f226a093c2d81fc97e4cf974558691eb`  
		Last Modified: Sat, 17 Oct 2026 06:53:20 GMT  
		Size: 2.7 MB (2687011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def710fa26d13205d12b5a438aa3471d94558f4d59bb0b4e824478f5fbc3fa21`  
		Last Modified: Sat, 17 Oct 2026 06:53:19 GMT  
		Size: 17.8 KB (17809 bytes)  
		MIME: application/vnd.in-toto+json
