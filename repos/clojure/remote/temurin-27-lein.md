## `clojure:temurin-27-lein`

```console
$ docker pull clojure@sha256:2c74b1ebd6d05456093d2f382bac973bb91cab39aeda9240c69da2e7adb7b848
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein` - linux; amd64

```console
$ docker pull clojure@sha256:fbbaf92ae19ddecad844a064b5ec70950a7b5417e26499773c4c0df340dfde61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166795418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156ec1c0def1ecd499d08e2bab9745072383063e71d3626e8aa3b0fbcc885fbe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:17:22 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:17:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:17:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06da30c621be6027233e930328ebf1a6c98af1928d974c54ee989f982f8f8f6`  
		Last Modified: Wed, 28 Oct 2026 02:17:43 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c387bf059de8002c9ae3c653c9339f0ce69f019309e5ada2cf3c46dfef614a`  
		Last Modified: Wed, 28 Oct 2026 02:17:42 GMT  
		Size: 20.1 MB (20132786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98042bf4854dc53b1b512aad3569643a03d1dfbaffdd993569006f9c427193da`  
		Last Modified: Wed, 28 Oct 2026 02:17:41 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40483e54e318ef625e0bdd10e9e4437659c4af316f74c62f95e52d745be15461`  
		Last Modified: Wed, 28 Oct 2026 02:17:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:cf78c30fc56a283799d6eea9d53ce83124126c9aa895ed0fe8d819c58aa2edb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb6f9a80bee0d9c8207fc0ae738aaa962f0bff7542feb1eef3527629f36904e`

```dockerfile
```

-	Layers:
	-	`sha256:b53b151b04b3de7b01d5138f6e35f9c96afb200b1407c0e0d94cf295fdc5fd4c`  
		Last Modified: Wed, 28 Oct 2026 02:17:41 GMT  
		Size: 4.3 MB (4252278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6981355133935ab5fb95950e85ef6d4cd664061462323daa7b89ada5e585b7dd`  
		Last Modified: Wed, 28 Oct 2026 02:17:40 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d3452f13809b3f85d97bd163e5a3ace8d233d2a9cec580085c22f5449d195947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165530665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96909a60ea921b1b22de0ae39dcedb96581e8e4ef22c2eac2fc06cda7a9a0e2e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:23:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:23:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:23:27 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:24:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:24:42 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:24:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:24:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4856ec7ff91e1827dc0a30857a82eea22d0ad5a0409c72fde226bf13f180b733`  
		Last Modified: Wed, 28 Oct 2026 02:25:04 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb00cf54cfe75daed18881c3c8fd9dc455d7b5d68987d8fa159da9e6d5dec36`  
		Last Modified: Wed, 28 Oct 2026 02:25:02 GMT  
		Size: 20.0 MB (19976696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348ffc6acd3390c7e4d22cc634134b17193543f902c9ca635942bd1c717c214d`  
		Last Modified: Wed, 28 Oct 2026 02:25:02 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2b72b8ef305b78573473529905d2fd02e707ff80726fa561258293a4a2d2de`  
		Last Modified: Wed, 28 Oct 2026 02:25:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:2e1538c4358f3fdb7bad2cca239c851f7f9c62b75cd0dccdf649f6d36d1a5f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f387bd143c73390414e53f15a6c6a7814a5463008dd4c7fd19a3ad0e643f75`

```dockerfile
```

-	Layers:
	-	`sha256:8b4f38d278363c0944bb6676d680283b2ae401e1464bfc5f62ed8c5e6cf8b718`  
		Last Modified: Wed, 28 Oct 2026 02:25:02 GMT  
		Size: 4.3 MB (4251914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:724458c0dddf899a56cd636fb5ecb0dd29a2666b6249f8a6b432b818590ed415`  
		Last Modified: Wed, 28 Oct 2026 02:25:01 GMT  
		Size: 18.5 KB (18525 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:f8e8dd78b58826c339bc2112153852468d6b71ab030c9d7dad15bb9f64e95aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169492567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d9b3dc423a78cde6f4c38d543396f33eafa6c1ba5d97ebf0dda51b88e669a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:15:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:15:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:15:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:15:07 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:19:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:19:03 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:19:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:19:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:19:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:19:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3bccd29f995b79b7862ff4967223c110516dd07fb12dca0006b4c37d7dba6d`  
		Last Modified: Wed, 21 Oct 2026 11:19:45 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b56e9bdae4f60f2808c576c805bc19f7ffe079ae13079425957b2a9903499`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 20.4 MB (20356389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd23395b90d5f5fc254cd2ed2d1fdff2aeba6b98ccddb190fcc9248910e795c8`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1674b8d0586650300f5beeeb94ff28c14df94a69a8c2070597b7cdb1d1aadb2`  
		Last Modified: Wed, 21 Oct 2026 11:19:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:57b7dff9af08c271b27f0dd805b3eaaca65e8ad4bf8bdf1de12bf24ce7918783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4256524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4878042f9ac9775618c3853df4ddafa356381df0d2307411d050fade052562c0`

```dockerfile
```

-	Layers:
	-	`sha256:1ac53b81ed2a08fd250e93b2d8ba0f3ecee9b9be02996cdb4382bd3438a9e042`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 4.2 MB (4238087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86fc793d27fe1728ccb7d8855c6817faccd411867233e722b4c1bf2e84880eb2`  
		Last Modified: Wed, 21 Oct 2026 11:19:42 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
