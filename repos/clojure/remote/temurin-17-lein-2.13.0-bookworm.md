## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:d4218fb8ecd33a006ecb6c076cef30aa192a7c974402095444a76d733654fd8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:47b910b8a58c5a657edde2acc1bcd27c35d16c7af06b1678ab28e7c84cab894f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218990762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636cbc25a1c7905c764740bc1b2c2b7775e529a0d477a7d0f4741f11aae6c4ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:44:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:58 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:44:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:44:58 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:08 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f3dd8c7dcf891df23b353beacc37edaf4a9d225f4a39ca113bd11d7074f98a`  
		Last Modified: Fri, 02 Oct 2026 02:46:29 GMT  
		Size: 145.8 MB (145825469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1cd382c7dce9d42098e93cbaf174eb7aee3713a001e2b080f8fd5d29426e6c`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 20.1 MB (20146255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc036cf68682f1c98d7abf5b9395aa3b68eaa76837036b9992bba25933c6bb8a`  
		Last Modified: Fri, 02 Oct 2026 02:46:26 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64e52d252bc440df37fabd4f750076f514f23fc048793b77ee15c7bd381184e`  
		Last Modified: Fri, 02 Oct 2026 02:46:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0f913582acdda8e2c4d64d08ce4576379257117e351a38c52445dda747d906ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc0080efb9961469ee7f66786dc382401c3c2d84cd2f169f238467ddd9f31c7`

```dockerfile
```

-	Layers:
	-	`sha256:534c38766611a3e7ad9ea6f3c56af0424955bdc78914c5ed8bf79cb76b7fe378`  
		Last Modified: Fri, 02 Oct 2026 02:46:26 GMT  
		Size: 4.3 MB (4289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836f54c85cc337a0e2749a426ff38f5a683a4868b26b83c6e3a72a82030e5e16`  
		Last Modified: Fri, 02 Oct 2026 02:46:26 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e0eee6e8c686002fd6a8769487a0f5260f14700fb64af750f3453c5bb142420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217520972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d956f8bf3b31c59a11f8347a2e369ec8480a0e6e6062736cc64175771fb84119`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:44:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:44:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:44:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:08 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037501c9a7a817f895c4c18bba848f31a00428efd962745787ce47838c2b7519`  
		Last Modified: Fri, 02 Oct 2026 02:46:31 GMT  
		Size: 144.6 MB (144648265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb38db1f1a674761f26517eac4163502896cee94073b9dd26ea14046884902e`  
		Last Modified: Fri, 02 Oct 2026 02:46:28 GMT  
		Size: 20.0 MB (19967160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4840512181bae376e27b4487b4a9335b04649eaddbf4ca04e0f988c1c91e9e3c`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ae6908b4ec157762b26aeafaa3d61371140e6efabae339c240810d11c8ceb`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:995ebca7230062f1ca8f6fb3f3951145623bcc22fba6681147e1dd4d0831dab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2d4803b56c4daf3c43ceb8726f658364f911a700ee2c446391dab0b367631d`

```dockerfile
```

-	Layers:
	-	`sha256:4a04a45b0625421f4f2b053208ae2faeaccc9db2243767a03bd03de1b168d9b7`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 4.3 MB (4288914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c62a7366ba7890d467f109f50d0ba1a85da5bb2e07149e209465607d50e372c`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:e765005e49a2d5e98e989dbe9ec75642f62c957f31539c096d3a44f6152bfdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222893488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46cce1376610ae7c61bfa18205341c56b086a1cd1a342626f7bd0022a1d6fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:23:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:23:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:23:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:23:54 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:23:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:23:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:26:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:26:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:26:08 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:26:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:26:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:26:15 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:26:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0a3417a86da6db5f153e9976a10bc4a3fbb991587e3a3d32e8db92b65d84b5`  
		Last Modified: Sat, 26 Sep 2026 04:26:58 GMT  
		Size: 145.7 MB (145670552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb076eed7c3472c403633812cdbeb421a8a298d57d4f36d6657cdf998dd7fc41`  
		Last Modified: Sat, 26 Sep 2026 04:26:55 GMT  
		Size: 20.4 MB (20357994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ad91ce22f47bbba39773e061d3a7d3eb5faa9f957dcdad9574603ece328e90`  
		Last Modified: Sat, 26 Sep 2026 04:26:55 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022666aecfea3e1799f0d72a0cf0fbe0a0e0ca263349ae2e4d81a058e7ff6ed9`  
		Last Modified: Sat, 26 Sep 2026 04:26:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ae0c11eb22f01f2afb96c72342c4d474e01652175b4b1e072224af1189127655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c90304c8c726ed71081749cafc97f26c7925d78cdeee123393b292e08c40fe`

```dockerfile
```

-	Layers:
	-	`sha256:6032b6897fa1b7b1798fcaa52a694ef1cc869bdcaa8e00ca81b8b4576186c720`  
		Last Modified: Sat, 26 Sep 2026 04:26:55 GMT  
		Size: 4.3 MB (4291160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5f93a7f6a07393af175602b74feb02c98c1ee5207a36004ed477e56b565689b`  
		Last Modified: Sat, 26 Sep 2026 04:26:54 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
