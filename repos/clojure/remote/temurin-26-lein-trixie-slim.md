## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:598ee1f6f8fb1bbfb455681eb3764edef2da5977f9895cd19319a712b4de7678
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:10b9bdc5e8388e6bf9001135b3dde5ba14e526daa3a13a2929e5a2a1099ab950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145575811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad433a82e620134ffcda46ea27365e22d69049ac4dca329a694e76af149a9a1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:39 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:49 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9520e4a24efd80c63b7a4248706c0007934972f46f7700575468629100d36717`  
		Last Modified: Wed, 05 Aug 2026 01:26:16 GMT  
		Size: 94.5 MB (94524334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a381d40065c4c346ce292db2ee26b2651d3ec0f1e386af9bbf289bb90ef306b0`  
		Last Modified: Wed, 05 Aug 2026 01:27:07 GMT  
		Size: 16.8 MB (16755093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441c9da958781246a3778ac8b173f209e71ee4bd0034a31ef7c243bf1bf08b7e`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a6f061739040947f53bab29e33ec62e8cfe7ed1bd6a9f854bb8ae976f5b61`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4bce8e147f695971c6c21088c7163877ceddab47d055947f1f6fec2384c15922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56635375a4966d12678a259eeb17c2b1f9aa523878f5a950dab0fee13f1a5316`

```dockerfile
```

-	Layers:
	-	`sha256:5f877bb38eb4517c74f13cd86d40a55cc14751a58247f88a12e0982503287666`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 2.3 MB (2332008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95addc4cb8073d36d193b7f58610148906519c2e7943b0892787ccdbd5fa7ce4`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:be38c35673087dd5349612273878b8d168cd1735f91012fa9ced78d3b5e9c302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144875275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcbd07df6b817d9880c9d2569d852ef8393406aaef07505252992f717000076`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:31:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:31:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:31:40 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:32:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:32:55 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:32:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:32:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b456e32984a0bc8613104ebcdf5003ab42a8181550779836a8ffc2009564e8`  
		Last Modified: Wed, 05 Aug 2026 01:33:16 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdaafe7cb1f4c67ac3c326095c2305c2932830e9e2d53563dc8727654eae28c`  
		Last Modified: Wed, 05 Aug 2026 01:33:14 GMT  
		Size: 16.7 MB (16711683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe4a1a1aef4d51c8d44ab70e75a96d51a10e75e34671994b4d715a0586033c8`  
		Last Modified: Wed, 05 Aug 2026 01:33:13 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93fefdeacf4ef0c0fe4892b61eacab658b9b5340dab2b1b62fb806f256cb1f1`  
		Last Modified: Wed, 05 Aug 2026 01:33:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4345c5141026bd7f33e8a06c01d6052eab4ceaf2a049691a528c4490b7bfc56c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417291bd65d350c34a937f1e816641a0fa9db26772f29307dc7a92237b1ed4ff`

```dockerfile
```

-	Layers:
	-	`sha256:076013a710c11da47e6b5320b102e1a3867202a893092f2ecb9f9ad62bd5495b`  
		Last Modified: Wed, 05 Aug 2026 01:33:13 GMT  
		Size: 2.3 MB (2331615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bbb971caeed7fd325220a49f84f345360059df6e37c981e8bb24fdd6a5374a1`  
		Last Modified: Wed, 05 Aug 2026 01:33:13 GMT  
		Size: 17.9 KB (17866 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3f08d13505c32e9521fdeb74cf4700c808852bf454cb26577bb75cce8c11b296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148801306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b0f48d1436fdca09ae0313972a4d8fa848a8e11da1c81d0ab74181fcd03233`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:58:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:58:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:58:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:58:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:58:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:58:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 08:01:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 08:01:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 08:01:04 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 08:01:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 08:01:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 08:01:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 08:01:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb4acaedaaa7309a50cefdf6d418c1ed45dd4e7ce35533e2b816c03865bc463`  
		Last Modified: Wed, 05 Aug 2026 08:01:40 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5adebd256c01cb90bb4f5abecd94e00d4727cc7f9c007f0dff982af7a418f55`  
		Last Modified: Wed, 05 Aug 2026 08:01:38 GMT  
		Size: 16.8 MB (16782295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e4e6b7a37425db040904065e78f304c8ffaee7ce770a7be6e795ea94466853`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b7740123fa5767b991e8ad90a3472edfa85eb936c4a636c7d17882ba3499dd`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c84c574535563e2824744bc4fad1555dd069ab95e6c8b51ad862de611ad0fce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bd933d23e0331ea608a7e903a6506702aa8b36ac057d6e1877c4b0705ecf2f`

```dockerfile
```

-	Layers:
	-	`sha256:217bef1ecdf97f0b9a5c07401e138567146ba0794ed20cc2914774db471500d4`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 2.3 MB (2316924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2feea3aa1407435e5190afca3f22caa3dcb38d631953f36d2ff14a22ee22d112`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:fdbb43db62583e48e447559228de624300d4d3659c5f185d22e6685f95bbf8a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141679088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb456a3f9871c03d9e939564ab71e940597049dcac822d9866e2559d188b96`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:18 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:51:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:51:18 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:52:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:52:32 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:52:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:52:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:52:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:52:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6973823e6df810f0c1f74c150b3996a6badda23c956392754dd05a1e1cd00937`  
		Last Modified: Wed, 05 Aug 2026 01:53:00 GMT  
		Size: 90.5 MB (90536967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b370ce83ee0ca2222d0fc95075a5be8e9821543b43e0d06dc3c6c593dee80127`  
		Last Modified: Wed, 05 Aug 2026 01:52:58 GMT  
		Size: 16.8 MB (16779911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a839413be924249e85afb5e9dca67b16390d09c124625e81c7208795ee5ac3c6`  
		Last Modified: Wed, 05 Aug 2026 01:52:58 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb260745db9657a51098f33c438f6a4843f71c92bd6b835d36ea0f4a4ee7ccb`  
		Last Modified: Wed, 05 Aug 2026 01:52:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e7c1208a2b9c20bb10cf40bd819fe38f08ad94326435a2e9c26daf66eccc4059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5628fc24a53d16a5012a553591eaa693c77a5ef102504fbffee9c8fc85770b`

```dockerfile
```

-	Layers:
	-	`sha256:ab5b64edeecac2170acce4983b893c8df6de3b9e045593f4da206e0f0785eff8`  
		Last Modified: Wed, 05 Aug 2026 01:52:58 GMT  
		Size: 2.3 MB (2313621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd5413e5b76febaeefcc3cfb262ab5bf9e0c092a022f4a3330f19adb65435670`  
		Last Modified: Wed, 05 Aug 2026 01:52:58 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json
