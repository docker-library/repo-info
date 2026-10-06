## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:7f038c2e1f893b7fc1977a61edd1a562991d1842984fb134bd4e984cd3ea79f7
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
$ docker pull clojure@sha256:577171689286bd49733f433104010e78c3fc8e9cf480da44dc8b2158a256941a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199005153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201a35ae4fc252ab0f001241a6f66d1fc3b3f7f88f96e084efd22909685a9d27`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:22:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:22:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:22:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:22:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 02:22:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 02:22:23 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:23:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 02:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 02:23:39 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 02:23:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 02:23:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4252a04c1e07cd634de582c6a7a41bee3ca880b6072b465b0921451fa89fedc8`  
		Last Modified: Tue, 06 Oct 2026 02:24:01 GMT  
		Size: 145.9 MB (145864177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c124d3a8f8a21b8e34614036998fbe42cffaf1dd2144c8679fa8afecb75f070`  
		Last Modified: Tue, 06 Oct 2026 02:23:58 GMT  
		Size: 20.4 MB (20376435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb73245db7859fc2ffbbcde65b4b56cb1ffc34f699a242bd501d5675608c18c3`  
		Last Modified: Tue, 06 Oct 2026 02:23:58 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:108896d825da7fc8ef9e78875ed4a6c4b371598560c74372c3b11dc36bd56bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37be0ea689ad3353be7d45f7c1ddcc61f57b0b9b1e23d4dcee4bada917fe833a`

```dockerfile
```

-	Layers:
	-	`sha256:26d53ef1aedd1456d96f53457b3799f9099b50c008bf1846b9fd86c923b0e187`  
		Last Modified: Tue, 06 Oct 2026 02:23:57 GMT  
		Size: 2.8 MB (2757134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7dfeb86d8b64d339a93cb51033fe76282768b88064cb827307db97f2d98636`  
		Last Modified: Tue, 06 Oct 2026 02:23:57 GMT  
		Size: 15.8 KB (15777 bytes)  
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
$ docker pull clojure@sha256:3a418d91f7ccaaeb5261edff1749e7650d6c1f8b8f223034dae1ae34bb393790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190437394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30de23d2979b9eac2cc255c8d57b99c1ab25ee6281d675774815558666a80b52`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:47:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:47:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:47:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:47:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:47:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:47:26 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:50:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:50:46 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:50:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:50:51 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fd1244a3ae8c40ba613f2d1ad1c4595497287e0e37271624575483df456400`  
		Last Modified: Tue, 06 Oct 2026 09:51:42 GMT  
		Size: 133.1 MB (133094694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfec3fd7d28efbb300900b408f1a6577f957fb0834b79d83f48b3caab7b33275`  
		Last Modified: Tue, 06 Oct 2026 09:51:40 GMT  
		Size: 20.7 MB (20735009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2403546c2d9c78a01951383fbe83026cf708003f61d7f1ab9dc70f9e7bcee913`  
		Last Modified: Tue, 06 Oct 2026 09:51:39 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:811de2a01d7ac7e65dbbfd422b728334fbffc78a641f608de52914a0ef9c4d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac0cd6345577ce3a3219ac70ed93f614f01b8c6b4604b579e7f55ee1510aa71`

```dockerfile
```

-	Layers:
	-	`sha256:20f1b1ee01d45ddd6621a601960728ca00a2487a555acf3ff7324da49ca10d54`  
		Last Modified: Tue, 06 Oct 2026 09:51:39 GMT  
		Size: 2.8 MB (2758352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:199828704eacf4f8ec9542cf9dda0646edce02592573cad5045748de412d29c6`  
		Last Modified: Tue, 06 Oct 2026 09:51:38 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
