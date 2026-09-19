## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:e758d6aaba42b7248cedb58fe65a1f9da0243d7d64de2cb8b3f5ac91f912f5a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cb0ccb83200be70bb52cac785977e1b348a0bb7add7bdc9547e9f8f6030270fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218653078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257bf3fe3c2f8ca677524ec4aa5c05c4d47fbab7b96a07148e8ef5807fffe0d0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:13:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:13:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:13:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:13:22 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:13:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:13:22 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:14:30 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:14:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:14:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dbd7713dbef1ea7b922fdb12d324fc85c140512d31fdd05400633df7eb80ac`  
		Last Modified: Sat, 19 Sep 2026 01:14:50 GMT  
		Size: 145.9 MB (145861346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f417ca21c7f63c71e6b3d5d8a5c90c9df1c0e4eb8b9836375289db5d018db35`  
		Last Modified: Sat, 19 Sep 2026 01:14:47 GMT  
		Size: 18.9 MB (18896822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b533356234c31bda80218541636981eb404eb0fc4cc8e852b6f0e0b4aeca77`  
		Last Modified: Sat, 19 Sep 2026 01:14:47 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:66ce3866790741282fdd3e7d755d653540456884327cbf07c95d42c1eb20f8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb00b30f2f885909bf3801299f4966bc7cbe6002db2ff83636a8361c07f4f04`

```dockerfile
```

-	Layers:
	-	`sha256:33eb4109138f4c8e7654f8bf2529d7e1b0df15c24a688e4444e5b7bca4526634`  
		Last Modified: Sat, 19 Sep 2026 01:14:47 GMT  
		Size: 3.8 MB (3847255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17af4e0579ee10fc9bc114cd9c98afe9af372711577caef39f9367d6b2d89e08`  
		Last Modified: Sat, 19 Sep 2026 01:14:46 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c902b4a2d83de8bbaa1881d5af7465c6e7baa2160e6df17dc1b31662c0e21842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.9 MB (221879312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e366653e1dbef7b11f95fee71735638c0eddda13685682a6294aa99b7eb302`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:58 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:19 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97359b038281ad390b6eac5fb10fa3dda81efa6c37d6d7dc455b28df6c5e93d8`  
		Last Modified: Wed, 16 Sep 2026 04:34:42 GMT  
		Size: 142.6 MB (142566294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c0855f50de0d06f539230c4b76a5cdd897ae033e140d0005656247b9c1cf7f`  
		Last Modified: Wed, 16 Sep 2026 04:34:39 GMT  
		Size: 25.1 MB (25092928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a889e85cfd212acd76f20de92265560d3275c2e48432fa37e1e12fcb88be6e23`  
		Last Modified: Wed, 16 Sep 2026 04:34:38 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:874456fb089b815ac36375859d10ef2809c5a26ca17bc8337fe64ad003387147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3859097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3be41f8d246c70e1d0193a619081d6d8976ec5128da91378a89f4735ecfc6f`

```dockerfile
```

-	Layers:
	-	`sha256:1ec21d6c6bb8e73f1be3c3fc41e6906bd13242a50698154d84faa70f6ebac62d`  
		Last Modified: Wed, 16 Sep 2026 04:34:38 GMT  
		Size: 3.8 MB (3843242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac18964ce0c24767c0fcb1e56a911af6a12b310569874cfc7699d29c700d0880`  
		Last Modified: Wed, 16 Sep 2026 04:34:38 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0acf526a73ad11eb03441b5dba4788f320006d7837766b0b85e076e75dfa8139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216036545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd74d617bc25a485d3ecfce26b76a8576bb235c60246fdc810ac7904d5eb1af`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:25:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:25:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:25:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:25:30 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:25:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:25:31 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:29:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:29:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:29:17 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:29:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:29:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b01e0e4cf6bb11e02241e47204dbdd57076f27f098eed815aeb5f868baa8`  
		Last Modified: Wed, 16 Sep 2026 10:30:05 GMT  
		Size: 133.1 MB (133090163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f69f8928f283578d901c16b610dc52b6195b27591e2b8e31321d91fadb03d5`  
		Last Modified: Wed, 16 Sep 2026 10:29:56 GMT  
		Size: 25.3 MB (25266852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2aafa64a49be4952bf7e26dce52b8952ee8b51a3a76a09b080ff522551cf72`  
		Last Modified: Wed, 16 Sep 2026 10:29:55 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f578bb1d6af33999577e8f41b77023cb0e5a55d22bc1dc97855f060f52575d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b06ff1a713db9b4545099437a1e54324ad0d5eecbb3ff46b8ce563ffc3e15e`

```dockerfile
```

-	Layers:
	-	`sha256:a6d01b081352482c506d113d9f51fb48ab110062c8f1727df6ed8f5c6ddf6d02`  
		Last Modified: Wed, 16 Sep 2026 10:29:55 GMT  
		Size: 3.8 MB (3842769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91348cbb3e09ab1e67920194313929b3d17a1c902f0b33e756b4c4e1cca67e2a`  
		Last Modified: Wed, 16 Sep 2026 10:29:54 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
