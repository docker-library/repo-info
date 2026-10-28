## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:ccafb253fb201769d07c36104a537ca357be8cf2d209b29fc1184c700d6c33e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:65e2d449f200c84577390927cfd8a397bdadf0a9d975308608a31640e048f29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218634526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d232bbcae9dda4ab5716a1b09fb71f938c026d527caf0ae81ad3411ef6aaaba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:11:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:56 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:11:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:11:56 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:13:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:13:12 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:13:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:13:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68a77596cf55aef7df61c880ebc8fef012301da4cff3362644c1426532ef033`  
		Last Modified: Wed, 28 Oct 2026 02:13:33 GMT  
		Size: 145.8 MB (145825466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131961ea1bd8eaf2bff1545ea5b29a66bb5e323e0e2c4321e87a3def104208ed`  
		Last Modified: Wed, 28 Oct 2026 02:13:30 GMT  
		Size: 18.9 MB (18885572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e3be5e93432d5ee66f919e173f0daa17fb21f9c087409872a096b751c83e72`  
		Last Modified: Wed, 28 Oct 2026 02:13:30 GMT  
		Size: 4.5 MB (4515161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81dbde925178ed98bc28aaabd9515688a4646312f8db60474d213e98d6d3a3e`  
		Last Modified: Wed, 28 Oct 2026 02:13:28 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4bfe43ee3bc7b80cdedc24c3cfb0258250d339a9fd688740a9311210950c29c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1861c2f9a8dd32e03eb47cafa25b5a9855c7ab24f88b0b7d944383288114cd`

```dockerfile
```

-	Layers:
	-	`sha256:33a301d9498abe80ab7604caba533d244782d7d0b51583fbb9ab0428f71127e0`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 3.8 MB (3826470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35a9c51112007abf7fc4f47b5c38e395c33dad48768f344e9545fc36b12e7d29`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a8fbb749d7043ca6609b2362ae9c059c668208311189c9bf5da8fb9bcb49e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217794348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d279c0180d3a37f63eb264632dd1af16ecf030a9d1a037eacdc019d3060de15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:18:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:20 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:18:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:18:20 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:19:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:19:42 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:19:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:19:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0a9652f5d3e6c99db3590ab40e50fd851d31af841179ab1cdfe057dc15df30`  
		Last Modified: Wed, 28 Oct 2026 02:20:04 GMT  
		Size: 144.6 MB (144648247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98912785e9a0bc772875775db7a863d1b0e878a43fa55153852ae7b483be1a0`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 18.9 MB (18854287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42767ba6841349dd49f3b86df48542a33a38e36aa1a41e5eb200f54bc36b5c48`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3783f507bc0fa8b71f1d9f3159594218e157dc687b42b56959c56692e4d9ff30`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:72f74db80423fa3452361828a2e48a031380ca8677eb6853634a81e3b1b7b926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58404f5268229d57d39726c176a4b2d658bbf2e58fddee5626b6bb536271a69a`

```dockerfile
```

-	Layers:
	-	`sha256:fc152fd3dbceb7fa8cfc8b5be6276bd76b83aed06923c92f97f75ef16766838b`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 3.8 MB (3826710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfadf538246186d9cff40e37c1e54f793008da970e25ec88b4a96f92dddc873c`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ee1d1d2ecbc0acd90150df72f3248d664751d514c69f640bffb12ce944e569c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222349560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94355a315a1c64b6fcad07dd8b4d9b1d7e50fb944d508ff8e0f464f1ab764d10`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:52:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:52:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:52:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:52:48 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:52:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:52:48 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:56:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:56:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:56:37 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:56:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 09:56:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 09:56:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 09:56:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c461ddfce047cec2e20efce189788752f1e6b0914ac19ad873878cdd22ae5b94`  
		Last Modified: Wed, 28 Oct 2026 09:57:24 GMT  
		Size: 145.7 MB (145671612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd1b48fe7e6a6eaf1b3a9b61dc39a399067487fd628a606104b02f81546fb83`  
		Last Modified: Wed, 28 Oct 2026 09:57:21 GMT  
		Size: 18.9 MB (18940041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d20be48f4febfbc77fbec50a3d7dbec436c214f1f3244b6443e16e294cdaa7a`  
		Last Modified: Wed, 28 Oct 2026 09:57:21 GMT  
		Size: 4.5 MB (4515234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6b24327ba106471e2e6c0366240fb1f8a371cf4e7cf4d581312bcc75d1d464`  
		Last Modified: Wed, 28 Oct 2026 09:57:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:17e5072db20ad420da2cdfa491dc24bf5a7cdd85858b7f86bc54a7f9aff6d8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7688bd0cd769613d9f7bd8558e3f35006910a344e0f509f928409b095eb051b`

```dockerfile
```

-	Layers:
	-	`sha256:1b58b0b395d71e45c77d3600b2046aa5ef579630edfd5beaf0185531c5e67443`  
		Last Modified: Wed, 28 Oct 2026 09:57:21 GMT  
		Size: 3.8 MB (3827468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed193c7b93c4ab26c333df282aa445add5fb1b712d4d62cb459ccbbbfb88e1e8`  
		Last Modified: Wed, 28 Oct 2026 09:57:20 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json
