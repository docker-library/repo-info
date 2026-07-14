## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:c3aea14e3ec35677a5fe0c6cbb73d425bb1e356f8d87131a2ed12f092d3015e8
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:29e56d378a22e90523c7daa87e768d5fc4c992352f019207a1857da697b73d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71252de69a8d606480d9f53ab608c771371bbaea62a34a5795ce2ec593d69236`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:20:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:20:13 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:21:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:21:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:21:22 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:21:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:21:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:21:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:21:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de37785c51222f90287a95117203ac96b4ec5f1657072976bd5811ee2abd59d0`  
		Last Modified: Tue, 14 Jul 2026 02:21:46 GMT  
		Size: 158.2 MB (158166929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02e056a617513574efe9669f82b965eea2fda2e86aa2f5c76e9c94f47e98ae4`  
		Last Modified: Tue, 14 Jul 2026 02:21:43 GMT  
		Size: 18.9 MB (18891565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abcc5d439f4c8c9396c94727d9a49b6df4122faa6bdca9cb5040e77e5a3085c`  
		Last Modified: Tue, 14 Jul 2026 02:21:42 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7186fb1c3074b86bcdd7c82ebb1221076f35293482b86ed664ee9d0ab07ff0b`  
		Last Modified: Tue, 14 Jul 2026 02:21:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dca1ea15712f849832b68128ac1f0c63304c462cc47b0101df9d292138ffa9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74ecddfd04ca2ae270ee8405b957b6c49cfb00b4122789e35cd6cd81176f8ce`

```dockerfile
```

-	Layers:
	-	`sha256:375ae62b8054d9450ff991ca01c19d7add89a2b998ea6f1e88f1e9ddf14e4b1b`  
		Last Modified: Tue, 14 Jul 2026 02:21:42 GMT  
		Size: 3.8 MB (3819708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6da079f4a51033ee73d79b86e921c6fca8031d704fcde25fe04fe0ccc3301cad`  
		Last Modified: Tue, 14 Jul 2026 02:21:42 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:89dc9c637f94f699ebee601d04374a9ba8a16531fbbac7cd0dff37b314367639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229503225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db73e924b304482db11e2f1600e201cadaa955957e230492b1dbb92f5bec620`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:27:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:27:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:27:22 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:28:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:28:39 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:28:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:28:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812d7a4c409fdafdb87d3db7a8e2066015bbfdc69e1f2b47b1bb802915a1d14b`  
		Last Modified: Tue, 14 Jul 2026 02:29:00 GMT  
		Size: 156.5 MB (156461278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959f5fd8817662e0ed0309223b4ec3c152bf51d42b6309b11fb1d3bf35153aa7`  
		Last Modified: Tue, 14 Jul 2026 02:29:00 GMT  
		Size: 18.9 MB (18852118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9b8854f4b653d00f786e7b7d7dd64b257689c4245d67e55e9d8ba55a43e9`  
		Last Modified: Tue, 14 Jul 2026 02:28:59 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f74ed47b9e90b019e8349e31472ef77ce06a0828100b845ea6791fd7f8a2af9`  
		Last Modified: Tue, 14 Jul 2026 02:28:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f24d6f9ec3e00ea19502dccee18c8c948b78248d89166d6bddcc9c83d0bbd4f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab3f56dfcb705623de089d864eb5574e4b91f43ff65fb1336c57132612d4835`

```dockerfile
```

-	Layers:
	-	`sha256:48dca2b219b35e80e8d52f0395ccc660fb628c22e22ca8286b716ea053a9c91f`  
		Last Modified: Tue, 14 Jul 2026 02:28:59 GMT  
		Size: 3.8 MB (3819948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca4936152dd494c093d9e19a54470c53958d2ca0d9ebbebf01fe34bc81d4cfb`  
		Last Modified: Tue, 14 Jul 2026 02:28:59 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d6b4682f9b74db3c9fffce3dbd4adf24b2fc8b29a8b865869fa5c74dbbf2c565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234929530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ab0396c4ce1f2140ea32668f4aa35cdd5e6d0bc00f7d440bc987f31eab286e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:34:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:34:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:34:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:34:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:34:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:34:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:37:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:37:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:37:18 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:37:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:37:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:37:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:37:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751a65c65edf1905b60c6e99f5032628d115abc443c216dadc96163f02300377`  
		Last Modified: Tue, 14 Jul 2026 08:38:00 GMT  
		Size: 158.3 MB (158343191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36329bd9f7d3da0b1b2c9e7ea9b51ee7a291d848bec567ecd605b7c78ab7b62d`  
		Last Modified: Tue, 14 Jul 2026 08:37:56 GMT  
		Size: 18.9 MB (18936674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b4c6de40ae4315ec0673e5b0cb5144524ecd44e5dc2c4fb546e146044a5a24`  
		Last Modified: Tue, 14 Jul 2026 08:37:56 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470c2ef5021096eb0e4e61c9a7c8d836f1d74b274a00d07c2bb5fb5a032af0c7`  
		Last Modified: Tue, 14 Jul 2026 08:37:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:67adbe22e1b2321150e680842d0bf2ca888bd0d1b0e508dc7cbe7e68920a934c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e214a8d562787b87d9bc7045845a78bfa465b0c8ee7b8a5cb1efb628ec9d39`

```dockerfile
```

-	Layers:
	-	`sha256:3970618c655cb9841da9a6f89a1870a042434d131b208784ee25cd543f02f83a`  
		Last Modified: Tue, 14 Jul 2026 08:37:55 GMT  
		Size: 3.8 MB (3820708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9cca5e970ad74fc2d1eead0e17e8ad1773aa5c877071c15395c40f0b4c2b895`  
		Last Modified: Tue, 14 Jul 2026 08:37:55 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:f674c0b0a7c5ef15190e16f9000513e31614e56d3ace535555fdc504a9cbf33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220207776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133703941b3285eae162d11980709364d418ae7a27f6d95cd8c8690110eec13e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:31:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:31:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:31:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:31:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:31:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:31:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:32:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:32:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:32:37 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:32:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:32:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:32:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:32:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094503ae9443c0a43f6bd76cc77cac91ed11eff783035d33d23643f85ab537d`  
		Last Modified: Tue, 14 Jul 2026 04:33:05 GMT  
		Size: 147.4 MB (147388321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8d1bf4ed8dbe881d72ca5971e274f6ac466d82c07d3e752ab99f630f17e409`  
		Last Modified: Tue, 14 Jul 2026 04:33:05 GMT  
		Size: 18.9 MB (18922110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31c6025a0696e20203260ae7b15b616ede2321879cfc1bea49c5ee464d6cefd`  
		Last Modified: Tue, 14 Jul 2026 04:33:04 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf5bc49d8f41575bc525547a3318c1af590ef65ee1df82ea87aa02cff47ed18`  
		Last Modified: Tue, 14 Jul 2026 04:33:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f20cbdac58552c9165da2b57a7ec8f2a15290837291ef0120c73c8ee573a24fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af326f00f625883352322ed17bec04616d6192d20e846c5e30ac1d0cff9dda52`

```dockerfile
```

-	Layers:
	-	`sha256:a06bac0e06d5d937f735031311561391b65fd63f8adb954085537a3816145143`  
		Last Modified: Tue, 14 Jul 2026 04:33:04 GMT  
		Size: 3.8 MB (3816135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5edb4141a320154ae7173a2c81e5fddeb9a8d0f3e5567e7f121b02156bb250a4`  
		Last Modified: Tue, 14 Jul 2026 04:33:04 GMT  
		Size: 17.7 KB (17716 bytes)  
		MIME: application/vnd.in-toto+json
