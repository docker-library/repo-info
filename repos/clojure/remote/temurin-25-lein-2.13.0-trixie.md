## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:18a1f045ff083802837457fdd416a6b4ff70a8dccb4da1d5c16947238375bb6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:45b5ae52e9c56c9803d47426eb30f5eec64fdcccdaef141a97c6fe32d2cf5d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168393897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e168b7661759814a1e8c7b5751c8dbf2c0583817f1b67be366c691d08afc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:31 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:47 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:49 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254689be5165bf6902e1808256ce254959c2a0ce136a3486385dbd1d8e4b1de`  
		Last Modified: Fri, 02 Oct 2026 02:50:09 GMT  
		Size: 92.6 MB (92618031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6505555011024ed43bae8d997bf411c09467d79c3706c5930a223105d630f5af`  
		Last Modified: Fri, 02 Oct 2026 02:50:07 GMT  
		Size: 21.9 MB (21880525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d33c5012b49f81a8f394c2e1f0ad0530f234f209f5c00060422dbd109602f7d`  
		Last Modified: Fri, 02 Oct 2026 02:50:07 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf98e15208fe9ac85a5edc5e7063b89969a25645a7dd343f4fb4a75daee98829`  
		Last Modified: Fri, 02 Oct 2026 02:50:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ff06ad0d3513e2331a011e3d1ed84a0f333561897e18cceba4f5a311f88083f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4847911d68fa913a8d565e4cb87d1bcbafd81c6988be1b991ccdf30d69aebf3`

```dockerfile
```

-	Layers:
	-	`sha256:c743657ab610ac37429539aa97054e91dc3d6674e5a62f328481be07fe4286e7`  
		Last Modified: Fri, 02 Oct 2026 02:50:07 GMT  
		Size: 3.8 MB (3795777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf1435a771fd56de117f8cdee262b658e413cbc6f5af39b121d5ab6e39e57b0`  
		Last Modified: Fri, 02 Oct 2026 02:50:06 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3604245aaec4b295d022e212f96ed425152f2dcfa237bcaa4255f6e93ef84611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167995690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae8924f4bc0309e79d5d712967835473caeb5735a4167fcc6218fa5535b480f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:08 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:08 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:27 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731aa444499bc9cd5186269629a2f62202369bedc62d0c5caf918c39b3f4fe6a`  
		Last Modified: Fri, 02 Oct 2026 02:49:48 GMT  
		Size: 91.5 MB (91528873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1594ddf6e077d22918127893efd392171f5abe99d6a12eb89ebe6db57580df0`  
		Last Modified: Fri, 02 Oct 2026 02:49:47 GMT  
		Size: 22.2 MB (22202364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72ae2b5c0acd51ee06052e6787b268ca1b38020f7a06069d68fb27c2385adb7`  
		Last Modified: Fri, 02 Oct 2026 02:49:46 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4fb2aa470c090d6a9d8824fbddf3143e05902d7237e29903654ec6b55ef203`  
		Last Modified: Fri, 02 Oct 2026 02:49:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d0383c34b1a01c019f6c0851e63038072d832ad7d7b80666b22d783137cd0a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967f7253020585e63e5cb892abc992cac3d009fe93effddd197f6d1dd0b87901`

```dockerfile
```

-	Layers:
	-	`sha256:40695733a85fe4a1e53e8a28ca2a0bf282b60e56204a2f4cc8a4a1b0e480c307`  
		Last Modified: Fri, 02 Oct 2026 02:49:46 GMT  
		Size: 3.8 MB (3796038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b43c719a76967f39c39969e415a4ee7dd8671ae9095b44615c51a31d7e7e920`  
		Last Modified: Fri, 02 Oct 2026 02:49:45 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:417fcf8a8fb087bcdc95630a3108b5966829fa30bb967850135c3b35abd3b4d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167908444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40c89e5c6dee75e1090ae4833d9187c62e8edb49353472d99ed09de94fd4bf3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:24:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:24:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:24:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:24:56 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:24:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:24:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:27:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:27:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:27:33 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:27:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:27:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:27:36 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:27:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8e960486494651b12db6bd2f54518def876598c3fc3f0b16b492cce72c7858`  
		Last Modified: Sat, 26 Sep 2026 05:28:12 GMT  
		Size: 91.3 MB (91256231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924daf9c58c72011b16511add55cf12527c5d843664b29ea1804d5f83857265e`  
		Last Modified: Sat, 26 Sep 2026 05:28:10 GMT  
		Size: 18.9 MB (18941479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869b53281a041d032674e9cec300dd36a7e144e17290bb81caa139d2e468f757`  
		Last Modified: Sat, 26 Sep 2026 05:28:09 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b989feaab036e55555aeb42ab8df4c543cb03d55fa3c9e7e55dadceda2298f0c`  
		Last Modified: Sat, 26 Sep 2026 05:28:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ecdf35e1f6b5073c23d3cb05e1d18feee22240e2eedadd8c8e82c3af6933f79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3798500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5e03ecb2c30828abd1cd069c21bc82a24339d4c42e760f6f33022a16c78191`

```dockerfile
```

-	Layers:
	-	`sha256:a92be81e0b80564b26fa606babb8532556680e9cd801e9b290aa7ea13427d8d0`  
		Last Modified: Fri, 02 Oct 2026 08:25:01 GMT  
		Size: 3.8 MB (3780099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6df247290716daefa313f492caf3b3b08fd4ea813782f42a20b8508a5ce2cda9`  
		Last Modified: Fri, 02 Oct 2026 08:25:00 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
