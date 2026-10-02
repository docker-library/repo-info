## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:bae002267ee09fc1e797d95830b9cb9db0169397094cb6159df16c3b6935f5d5
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
$ docker pull clojure@sha256:f903b7763aa8cda97644c80a70b7e2717213729bccc093fa28aee8f59570348e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196704736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756e43807d99db0910990082fdce7076f666113dc24ce9f7c775b45a83d36b03`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:33 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:33 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:44 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46049675815946818b6364fbc4c969cdf97aec721eb05084e26736fc6eabe9ad`  
		Last Modified: Fri, 02 Oct 2026 02:45:06 GMT  
		Size: 145.9 MB (145864231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e04dea9e4cd74c35d1a1d289451972644f670cd898003f7a0fda16ca0af6cd7`  
		Last Modified: Fri, 02 Oct 2026 02:45:03 GMT  
		Size: 18.1 MB (18086862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acb1843c9c29f45d7fbfa0f37a9b3e29c458a8d7395fd2477507a491bc6f5e3`  
		Last Modified: Fri, 02 Oct 2026 02:45:03 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4eb54df3b2927c23667305c8b5fcfada392e176ed6e0ce77b8ddfd4dbb74f96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb645a6d54af71ef3102ec1d765ac7072a7fa3733097ceb631cd6fd7f1d31c43`

```dockerfile
```

-	Layers:
	-	`sha256:6000b1325158ba3b94377ff03bfa27a50bfa3e78b1f261a1e449fffa17eae1e1`  
		Last Modified: Fri, 02 Oct 2026 02:45:03 GMT  
		Size: 2.8 MB (2757134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09a013ff0ba5393e1dc22b29a51b748fb60acc94030553dcf0764c865bf1882a`  
		Last Modified: Fri, 02 Oct 2026 02:45:02 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a2caf080563af8ef607ac40e5e4a71a3a676542c8082e5139c03abd4aa25b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193123880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7210bb67159b0182af7367f7bd31ad7d55c9e175974e13ca6d4c18064c68e12e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:26 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:26 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:38 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96e0f493283004d04419a0d16131c29b26fa35e8b4af9bdc8043b618f9cab81`  
		Last Modified: Fri, 02 Oct 2026 02:44:59 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546fecf1000c8f5b23806d65d7dbf995cef1f4708d3366804ca90e1c72c42393`  
		Last Modified: Fri, 02 Oct 2026 02:44:57 GMT  
		Size: 17.9 MB (17908405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da03caa2ea7a235a2ebe3d24fb7f69420d94103067fce9739d000c565d8a5386`  
		Last Modified: Fri, 02 Oct 2026 02:44:56 GMT  
		Size: 4.5 MB (4515237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ecf2278b00b3d492ad861098742fe39bd2a2d923d202330fccb0547e126154f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246ba20f0d2b13c9e0008bcc00c9e0621484be7ab7914692438ab47745a34169`

```dockerfile
```

-	Layers:
	-	`sha256:f4ba887cf4a75d0579eb33860ea9f24631e57cb7dad3c2710f4f1bd85bcf3a8b`  
		Last Modified: Fri, 02 Oct 2026 02:44:56 GMT  
		Size: 2.8 MB (2757367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e0aea2177d2275c82905e2a29051f1076a01f7a7d4deee26105dc0941ea2d8`  
		Last Modified: Fri, 02 Oct 2026 02:44:56 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e6cd0220af0611a336ccbe9ec809033055bd39f465cb15adbaea7ae18a98282c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187975016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d454fe90f63a068177a40287a0efbad6ac91d9228b706e98c1d14268ba9aa531`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:36:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:36:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:36:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:36:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 07:36:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 07:36:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:40:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 07:40:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 07:40:04 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 07:40:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 07:40:09 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435b5fde11a9c421080a95f3631157bd4034967ee5a3c89f7c8b0f52836a0055`  
		Last Modified: Fri, 02 Oct 2026 07:40:55 GMT  
		Size: 133.1 MB (133094699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1959e1c911df532eb05bc19c3360b1b5643ad9171bbbf89d06405cb185ee53`  
		Last Modified: Fri, 02 Oct 2026 07:40:52 GMT  
		Size: 18.3 MB (18281478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743132cac6e5ebf07faa07b44e55d8a756c69e00b4e45116ea2e964cf4fe0d7f`  
		Last Modified: Fri, 02 Oct 2026 07:40:52 GMT  
		Size: 4.5 MB (4515243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1bd7a271d0926db5dd5192ff13d937208b541cb0a359408af781821e446e7077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302545a420c918e208b077118583ea80c4eda385b172b25eed03a5d05fe68778`

```dockerfile
```

-	Layers:
	-	`sha256:492006bf518f69e2699447c053b8c3f1b1e50c8f793f40f41ec11a9f726f56a0`  
		Last Modified: Fri, 02 Oct 2026 07:40:52 GMT  
		Size: 2.8 MB (2758352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:091d0cf6f342cd5f5043770c7a4d35ad1cf6d8b6026bdb90cff29038aaf27563`  
		Last Modified: Fri, 02 Oct 2026 07:40:52 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
