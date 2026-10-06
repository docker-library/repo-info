## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:0b4fb5793188027788607f3eb63d45867cec6471918c4994856c3bab5f744ed9
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
$ docker pull clojure@sha256:d609031a37ed35b8dbe4a996e10b33c1799e5292df7d5eb0fe03f19d98624dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167921765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15913bead717e1fa6749ef666ad9f5c74075f2f14cb6d59bc550aa3018ddf451`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:34:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:34:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:34:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:34:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:34:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:34:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:38:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:38:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:38:12 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:38:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:38:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:38:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:38:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8fb7d66b8e5b0e5addef4c5314a040dc33a4b1394fde24c55b987c93d89f72`  
		Last Modified: Tue, 06 Oct 2026 10:39:08 GMT  
		Size: 91.3 MB (91256255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8225196fa3979393ce3813992d1c364af705840007c39c88c7b25258923aabf6`  
		Last Modified: Tue, 06 Oct 2026 10:39:06 GMT  
		Size: 18.9 MB (18942738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9609574111fed05d4d7fbfdfc8d183cbc2663c1448d171bfd36529850de6c6b9`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a2e60091d813a90e5648d59de63bd6bd6e07f4b9b655d9837b6c31a3a1cacb`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1d176789c4e4e497997a88f918dc6bad01097e05f91eec3fef5299704ea13c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3798500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea226c4856c90a0b4d7955b0504728daf9644bcd75f73aef08fb01a298f015e`

```dockerfile
```

-	Layers:
	-	`sha256:29e414673f3eee7e4ed7d228103f4d44768a4fc398b2b1e70cf6938b1959fb15`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 3.8 MB (3780099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f37eba9176ee6d9c226fab1e4532b30d041e5af38b023c42df0c63fb3b0f534`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
