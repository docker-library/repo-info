## `clojure:latest`

```console
$ docker pull clojure@sha256:b2c5cd68da994cc23df882cd8ed3f17e60483e0fc6b8d1ddfd456f15a3bcff37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:f2b72738b353bda58d2456541cc96b12bd5f17071132ee53aeded714abcec903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237832444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c038ab43cf06ace7d3cc517791dc386e3988866327cba3df73e64c4a1c29ab5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:00:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:23 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:00:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:00:23 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 04 Sep 2026 00:01:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Sep 2026 00:01:31 GMT
ENV LEIN_ROOT=1
# Fri, 04 Sep 2026 00:01:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 04 Sep 2026 00:01:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:33 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:01:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:01:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec214ae7a117e5ac51b4f8c4acb85d431c6c9b61a7b8fa2223d294b63c144ad`  
		Last Modified: Fri, 04 Sep 2026 00:02:06 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6bed926dde90cd4166ff6ac110e71f2403d425811c263b180f1fa88aa292c8`  
		Last Modified: Fri, 04 Sep 2026 00:02:03 GMT  
		Size: 20.1 MB (20133054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee55ab14a630808a88fb4f21efd3c6909e9f4690dd3c1d3bc019d958631a07d5`  
		Last Modified: Fri, 04 Sep 2026 00:02:02 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab856ffe9ff070a6546cf357179bcde01f6348211bb993b82c2acafdc46bd45`  
		Last Modified: Fri, 04 Sep 2026 00:02:05 GMT  
		Size: 72.1 MB (72070627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f350fcd60e4f44a10a638f8bdb0686d4fcc54d488d8b8632927ca2ff864ac9`  
		Last Modified: Fri, 04 Sep 2026 00:02:04 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe5c3ef3f05813bb17a13f82062e3fa9ad1883c68f21ba674db2f310d37afcc`  
		Last Modified: Fri, 04 Sep 2026 00:02:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:7f0ce275532b0ca1dc0a16a4a27e7a3c1e20c9da7e32c6b041d9242a090ec3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99205cf3ae4c3b86c1f002af27f098d05aee90f5d8ef545cf013ab9905b7604`

```dockerfile
```

-	Layers:
	-	`sha256:ca6335e83c8491902e7f7fbf14ea99ab4c85700347254cd1b61d42ed9c8bfb24`  
		Last Modified: Fri, 04 Sep 2026 00:02:02 GMT  
		Size: 7.4 MB (7442419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0de698aaf3bffe9665221f55878f5a77279f86623488cb86e0e3301c698b391`  
		Last Modified: Fri, 04 Sep 2026 00:02:02 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:46d3ea4657610b729c9449ffd457197808554ab358fc860079ba7696f07c2e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236621320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d36b252c7084232206c4e7ec8163b245d4d9d8fa65e92c4fee8fa69cb81413d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:00:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:00:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:00:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:00:17 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:00:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:00:17 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 04 Sep 2026 00:01:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Sep 2026 00:01:35 GMT
ENV LEIN_ROOT=1
# Fri, 04 Sep 2026 00:01:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 04 Sep 2026 00:01:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:38 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:01:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:01:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d766eb492dfb25a64e55900c72305239346bb5b673b9dbb9c4a83fb8d28f2ba`  
		Last Modified: Fri, 04 Sep 2026 00:02:14 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd283812ca692cc712bbb3f8312be7b186b6cb07ae2968817d297953bd8e3caf`  
		Last Modified: Fri, 04 Sep 2026 00:02:12 GMT  
		Size: 20.0 MB (19956866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3af56e9a599f5be5ad08044b13b5814ec9b2c2cff0ebc38e49a749f636be44`  
		Last Modified: Fri, 04 Sep 2026 00:02:11 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a713fcd9f83d6791e4c3bf4d5f30484c79d104ba8b1917d8faecf985dc59656`  
		Last Modified: Fri, 04 Sep 2026 00:02:14 GMT  
		Size: 72.2 MB (72232319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5fda06fcd55a5a4bfebfac757af949e57c982478f87a59a068fdafafe97fcd`  
		Last Modified: Fri, 04 Sep 2026 00:02:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13003df731b7cef06867de36795cee0c495897b40ba879c46a235ce35991ce1`  
		Last Modified: Fri, 04 Sep 2026 00:02:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:bc2ffbbb4d097d09ae4148186aa3586ea9f38fe13a2e5174f2d36d3abeb890b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f057bc94d495ce891f23a85307ad22c03f13fba98906b639339bd3f5863b7e7`

```dockerfile
```

-	Layers:
	-	`sha256:79c4d29ef3e304c9301c2c784d78b7f0c3a7e23335df672133f4d743261c3ac3`  
		Last Modified: Fri, 04 Sep 2026 00:02:11 GMT  
		Size: 7.4 MB (7448155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaaa5db8613ab93e7400f148b6a088a85a109e55d1bd59368f31dc241606cc5b`  
		Last Modified: Fri, 04 Sep 2026 00:02:11 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:044f7faff932cf1882edb9932380e97ca863609bc95c97b713c8261998687560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246139950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfe29599cedea671d36234f18c4cfdcc36357b92c907d97585b0a13109eddee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Sep 2026 00:02:44 GMT
ENV LEIN_ROOT=1
# Fri, 04 Sep 2026 00:02:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 04 Sep 2026 00:02:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:51 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17787f631a015fed889a35c730ca329f60ae02a4d8ef800df76a3325020ab9e8`  
		Last Modified: Fri, 04 Sep 2026 00:04:35 GMT  
		Size: 20.3 MB (20348701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f854bf7258a3e8cf3c876c36f12a11f4f075274de2df4c65f4ea55f72ec6773`  
		Last Modified: Fri, 04 Sep 2026 00:04:34 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f4348736b37a020504db82005b7bfec9df367a81afd061af727f12d286802a`  
		Last Modified: Fri, 04 Sep 2026 00:04:37 GMT  
		Size: 77.7 MB (77677333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e02f15a4c4facfce2375f4b40021ad4a28670a6e69792a682f46b028f48017`  
		Last Modified: Fri, 04 Sep 2026 00:04:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efec471d99cc90f42a25edc81d5299b5b692cdc3c0756c45bca17c7667c11b1`  
		Last Modified: Fri, 04 Sep 2026 00:04:36 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:214deefbec22926ed8daa0f7d5cabf1f84efbdfa02106e45e9d0d91c97af6261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c65a58565a663c5d66864b9fe67312b5445b20312a6fb77721e6fc3b13781d`

```dockerfile
```

-	Layers:
	-	`sha256:d3aa7213aeaf963a9e70218668054951a0f7706aaaf9665440b003354d4a2785`  
		Last Modified: Fri, 04 Sep 2026 00:04:34 GMT  
		Size: 7.4 MB (7430935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d897f3f6ca9275066fed7a99a32b382ec783ef525e605c6902b53986fc16057f`  
		Last Modified: Fri, 04 Sep 2026 00:04:33 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
