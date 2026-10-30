## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:377c5bb65650b811919f4ba5d546aa3e335748ad85945f3c040d2475a43acd4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:9a618818ba574d834762d664624d9cb97af8e145f4c34de64e98ca870dd49afb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165407289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837ef163819c54ede6ef205bebddcf75005be32541f6169cfa11c9cd4ab81aa9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:05:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:05:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:05:32 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:06:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:06:46 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:06:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:06:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787e77f2111ab6865c279885a0653c015230619f7603692bdea0196490c0236`  
		Last Modified: Thu, 29 Oct 2026 20:07:06 GMT  
		Size: 92.6 MB (92598848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e875dbc88f5e50c73bec574e55d74f407fccfaefad7e8ae5bced1c0abc86656c`  
		Last Modified: Thu, 29 Oct 2026 20:07:04 GMT  
		Size: 18.9 MB (18884933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0101239229a281716940f8eeba3549827155368434ed4b78cc622d1a294b3a`  
		Last Modified: Thu, 29 Oct 2026 20:07:03 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0395f779f429594062347f1bb360e75282cba41dddb27415b38c85d7a4a253c9`  
		Last Modified: Thu, 29 Oct 2026 20:07:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7f609b3f54ddd59d6c69a38d09878a04ea06fc703475f639c3d879e8eceb643b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d4ae7e9365280eb9d999c24fc0dff93859856341a012853e3d7857c4ad1783`

```dockerfile
```

-	Layers:
	-	`sha256:dc172235efcc5ed0433e40d782087ca809c53f3b81bc438e6fc6c8ea56381c69`  
		Last Modified: Thu, 29 Oct 2026 20:07:03 GMT  
		Size: 3.8 MB (3794492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6acc4fd8ffb732557f77a4670b6ae6a53b022c14e8db426e67613cf457aeae8`  
		Last Modified: Thu, 29 Oct 2026 20:07:03 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bb991777f37cd3ced6493a1810c0460d78ebded8bd67e2d8d9d690ad9c5bcc85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164672121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffdf9e213ba78ec940fadd297d6b3fe36edc96545e942ab13455d9c854f936c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:06:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:06:16 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:07:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:07:34 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:07:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:07:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bda62bbfa68f3ca69ed0c7f8152946587d9d4a1abed75a74b8c5568f5877fe`  
		Last Modified: Thu, 29 Oct 2026 20:07:55 GMT  
		Size: 91.5 MB (91525548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c78f49bab5e6a00612f271777523b5c1ec73cf9bc04fa5e7360c1fa3330662`  
		Last Modified: Thu, 29 Oct 2026 20:07:54 GMT  
		Size: 18.9 MB (18854752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47976dfe30c42b66e98b2866c4cffe2705851daac52a8982ec9228ca9a582e6`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bfecbb327fa981478984a154f8746c134ad7bdd2ec3b449bc7c2f45d3b3ef18`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2a8b5c12fe02d3d2a08d9176cfc273a671e60a0d31f2812497e46274f45605f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0724c8c591fde39f572424c4689f057f9ac724cc8afc2b8a18daa3bb9fab00`

```dockerfile
```

-	Layers:
	-	`sha256:e7eda79062f45d9d81dd44874be6dbfe67f89c72e7057cb05ad9d588cecea897`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 3.8 MB (3794753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf5da79d3be59e146ce91ff9803b08ef457e85d86c93f82c995df0b6cb25d81`  
		Last Modified: Thu, 29 Oct 2026 20:07:53 GMT  
		Size: 18.5 KB (18489 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1dbcc64fc59c57f216cf28cd9ee0fdbbf71f34a6bff8ed3a0146ac75666921e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166789608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a17ca6540d97f49c9b11d08eab75196cc0092e3a3a1456571e39a115120232`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:34:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:34:20 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:38:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:38:13 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:38:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:38:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec987719a309d018379ffe9ed711b890b4cf54c38b046b86d69b8e3ff1cf3b7f`  
		Last Modified: Thu, 29 Oct 2026 20:39:00 GMT  
		Size: 90.1 MB (90111714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c283070da83df2c2f6921bf7eb3e495fee040d1feed0ebf03779af38f236678`  
		Last Modified: Thu, 29 Oct 2026 20:38:58 GMT  
		Size: 18.9 MB (18940008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84026a51c22187172b2342520032ebef1c6bedd5a15f707cede3f4733434fd6`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc0a3f3552bd1ce26b45520f612cad8957f4ad861f7eeb790456962e5100ce7`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e12537adc9e376d0f5fb506321aa72be81ddff59633c7f672102945d3311bae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be8ae3945b430d6c807a5aafcaf3d1e64d6aa9d50f19ce16736735bd2affb68`

```dockerfile
```

-	Layers:
	-	`sha256:e1c833453531bc94209cfe575f9955c4318b5847151578ed21cccdaeae3a71d8`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 3.8 MB (3776953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f872fe856c3b5a56c0c771da91d0d927ea2376ee9407d45ad481985da9ff6992`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
