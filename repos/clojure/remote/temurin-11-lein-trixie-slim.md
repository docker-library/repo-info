## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8408e7d8a93e97a6261c9440d9669c17f3fe40c4e03301d20028f3e500a341ee
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

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7cc7234929f52977fa4be9cdb05d87eb362443164dfc28629a8f582789317334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196901221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1131eb280c2cce5fac742732029c07b2148b107f779b957128260b723faedfa8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:11:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:11:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:11:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:11:40 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:11:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:11:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:12:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:12:49 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:12:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b8f1c04b2cf91412d877f14baf35371920ee6495fd8e745761987d88d30e10`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 145.9 MB (145861459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fda10a92121c11e1efaa7bed2cc83fd5c26c6c16d56d7b18ca1b8692e758e8`  
		Last Modified: Fri, 21 Aug 2026 19:13:06 GMT  
		Size: 16.7 MB (16743750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bdac488389260a5fc18894c867a461c0185abba425c5d04ca80b28a52a22f6`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:847c6b972cab1781f960412e820a6a5991b820add16b426d3c9e1f0ce71dded1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35162715476c7760b7557e6b752750a0736b68774151e649788298920ef47402`

```dockerfile
```

-	Layers:
	-	`sha256:4286ec94781124b64697bc23215660d51b4e35e59a278e4d3d4e0d374ff16c25`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 2.4 MB (2386631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95aa3ea783b1b827c9640f6dd9e966275cbcc6066565e7a740dede6d4aa013b8`  
		Last Modified: Fri, 21 Aug 2026 19:13:05 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:27db0fe34b5e5d2ea640c12ecbaefc9061775c83a1ba99e1d6aee0f87961781a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193936743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03aa278fc1dacb51c114736dbb737df3d2167f198388922f0acc754937232f01`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:01:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:01:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:01:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:01:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:01:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:01:38 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:02:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:02:53 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:02:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:02:55 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f7808e0a0b3a4e2f9a5bb945b1ae8b1b3632ba2921a25e0dae6d03bfc71a30`  
		Last Modified: Fri, 21 Aug 2026 19:03:14 GMT  
		Size: 142.6 MB (142566616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7933394ae5d742285223a46a2a1e5d17943c842fe7bb082b1e6c43d887a98ec`  
		Last Modified: Fri, 21 Aug 2026 19:03:11 GMT  
		Size: 16.7 MB (16711309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd16ae66fce175b50da43168c50328b1fd02c0e6a12ad18bc9b17bd479bbf83`  
		Last Modified: Fri, 21 Aug 2026 19:03:11 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c20d55ac29ec9a543fd05e7a45a663841f90a9ca5780fb1e4f30370219ea5d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b70db99f963b39edc6c6ca6a3d4d6fcfa94b56ea0679ec22acb948fbf76d5a8`

```dockerfile
```

-	Layers:
	-	`sha256:7a5cea4c16d82c21cf1d48d9f764d78b1bed19c36ede643d89584c2e506554e4`  
		Last Modified: Fri, 21 Aug 2026 19:03:11 GMT  
		Size: 2.4 MB (2386859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7ebc725bec0008b68eb2ca7d2c2ee525fe04dc865184268f4ade8f5b9794e9e`  
		Last Modified: Fri, 21 Aug 2026 19:03:11 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a165573322f76ee902e598a1e419175186d157e2567845b37e19d750c12e3625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf713e3cb64a19def1258706f4a8cf0621bbe02f6e04ac779a86049ffca3d3fd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:37:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:37:20 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:37:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:37:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:40:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:40:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:40:39 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:40:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:40:44 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084b8690c19959508c59fd39f894e560873583a3645792800fb1e42ab4d47b40`  
		Last Modified: Fri, 21 Aug 2026 21:41:18 GMT  
		Size: 133.1 MB (133089927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c84a650e43dd4ac13febea0358ec892774edee74628332dffd49d2fa122a602`  
		Last Modified: Fri, 21 Aug 2026 21:41:15 GMT  
		Size: 16.8 MB (16782279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae3af297df5ae92159ae933f7ac060d1ff7e0ad686f5c95288b5238d8d4f82c`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:052c3daa87a5ea400682841199afc347eb45e209e41dbb5210602c2ab0948372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb37af3fb28c65b983e585f59b57b8a847a55b0c931cf9cefbf1675df69bb257`

```dockerfile
```

-	Layers:
	-	`sha256:3a8e8229273e7ac99ef0ddcb05c5df863dd8725919a3e9b5e2241fe54a32da86`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 2.4 MB (2386996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b15eca3d85599ad8a2cc1625f6f0b9c3c884a0f3b8cbe7f1400aa36cb2db77e`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:35414e34e64db55c81cb4ab2b2c9e34bdcae312bb6fb862ad659eeb8e295403e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177804134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fae96a58ef4c33c92097b34db2e09a9bcb40b77666af278c0e7f7ca3f6e2ae4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:05:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:05:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:05:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:05:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:05:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:05:04 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:06:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:06:18 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a91f1904e9a416b03f7e4bf8f48a3356943ed5e958efb6194ce8b59411ae8e9`  
		Last Modified: Tue, 25 Aug 2026 02:06:43 GMT  
		Size: 126.6 MB (126641467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c251eb101687a1f9e58387aed4471ee4bad12e5aefd9d7d0eaf1cc4f9172fa`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 16.8 MB (16779731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d47523aa959e40cf607bd8466635ee398866ae388403c3e466f5b8dc91a6b9`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e370ae163f96a71f0b7ee38d6ba08adc95085377a7d7cdb960fe29dfda61dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2399024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac923f4fa8c1f21de90392d755b7b1f8201e6eb481988c46bdcb7172f668ff60`

```dockerfile
```

-	Layers:
	-	`sha256:8782f2dae228bc8bb8598957ae55e2c588be0426347c6f1e9c52d9001fc1b855`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 2.4 MB (2383260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6610582ab995bdb1619fc974e1096032add0b7f84bbf436819474ac572471f62`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json
