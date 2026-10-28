## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:3ba27699bd8cb923c9a7ac29e257137b35f7be9ccb0a7335e6a087de50e98a0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:891cb9c5833729a73c51a951ed28dd04a5f1b681fe0b47cf75ccbb521c824806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144458945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03be4a98647c07d9918581611572e39b247847c4e8930196bba3dc430ae30810`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:54:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:54:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:54:03 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:13 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18fa4b6230289abd4689ed84fdf1ece6d5a0bfc881956d7114e8149c4fc8f19`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 93.6 MB (93622520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759fd45bca537d6705e953e554bdeda19ec52c335fa13186e9b935bcda7b688f`  
		Last Modified: Tue, 27 Oct 2026 00:55:31 GMT  
		Size: 18.1 MB (18072852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098a6a2067a5cef6fd7c454c89eb62b59079cde0c544ca3a1fe4aca0868587ff`  
		Last Modified: Tue, 27 Oct 2026 00:55:30 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c70f2fdfdc7ff87a573a8c53169ba01472460b74d8151f422607df54923b22e`  
		Last Modified: Tue, 27 Oct 2026 00:55:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b58f155f3b138b47ecce1b6e174dfae0669990834bc4c88fb35b7e93c991dd2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5562455494e7d122d6019bbbf3b1d56be247a60a6f9abcba069c8d04f6a2808`

```dockerfile
```

-	Layers:
	-	`sha256:abba7b35251141a29b5e89b820af50940167e00794a22be2388f777316e3b4fb`  
		Last Modified: Tue, 27 Oct 2026 00:55:30 GMT  
		Size: 2.7 MB (2699947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:811257a9c15b227ef06ac0c1d4dc5ae6a6f388928e14a939a2ac18c18ad9df88`  
		Last Modified: Tue, 27 Oct 2026 00:55:30 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2caf08d2d75c531f6e2f487b129ba8773981bd2760090de6af4c162cbe6b655c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143203216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0d0efde0df23cf1cf6c19da1cdb1c6a8e098cffcb4735b9da3741e66847c53`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:23:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:43 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:23:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:23:43 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:25:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:25:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:25:02 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:25:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:25:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:25:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:25:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e809a75f10fc310bb5f7466600095f51ce805e5d9597e5cf46e79b1d007bfb2`  
		Last Modified: Wed, 28 Oct 2026 02:25:23 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b25ae37834b35e81a3bf67dc720d747eaf6f6c8560e962b7b3930653e5d1aef`  
		Last Modified: Wed, 28 Oct 2026 02:25:21 GMT  
		Size: 17.9 MB (17916459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec1b0f6a20b4754af6f121d1a7c06da05698a301a214d8db7dc0f4effb9e948`  
		Last Modified: Wed, 28 Oct 2026 02:25:21 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2bcb8c4878346fb5f967fca5a25657c6c8c63df774f03e6574e5b322c5c2c4`  
		Last Modified: Wed, 28 Oct 2026 02:25:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff4abdf99557804f1249d30173b6a99500aaea84796dd5093d5b637b8d1f9c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54355b9b5e9b0123a9e7e60e849f2a5578cb70d61e2ced360987c5c25043ae`

```dockerfile
```

-	Layers:
	-	`sha256:feb7b19358817e7f5f8ea034658a8e7fe5d419da11219b33fef7159d954ce345`  
		Last Modified: Wed, 28 Oct 2026 02:25:21 GMT  
		Size: 2.7 MB (2699559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c20c847069a2ddf57b2fb50bd0336367b2d5d3e26eea09382efaace58b2d22bf`  
		Last Modified: Wed, 28 Oct 2026 02:25:20 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:08447113128e96c3097a5fa5c56d9736f7ed35fe9ae8a26f9a6011eb712af2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147144009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7422678f311679ce13dad17b3e517de9d651fed3a11fe54bb07c49a5ad2821`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:17:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:17:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:17:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:17:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:20:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:20:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:20:43 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:20:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:20:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:20:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:20:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec518236d5067a8af035d0726c270d0334bcfe44ec1a32d3c23943fe275b8b7`  
		Last Modified: Wed, 21 Oct 2026 11:21:23 GMT  
		Size: 92.3 MB (92255784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4a1ee5639ca897c5064e1f9dc08b043f0b6ffe6a3692115ca15ab032ac76ff`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 18.3 MB (18279365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1db72aaf4576bdc497da5cbea2b79c414409a2305c9a3bd3b9384c5cbd875f`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff856df48c67824c6e99437d8a402921386b54b4f705b1239b14440b3b025088`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:588c82519bb480b0caac03b70c807196e8fc39712c14c7eb73be66958646d862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2703526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0811b7e8d0533ca89f4c33fca69687fe9c87cbc26f13a89e54be99fa69f0ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:031aa1c6051e004ef3c19a0211d6f975c11f0cea067d85a3a323e84345402927`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 2.7 MB (2685716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d729743e35502cb3db68b0711b9ada4c44c8c1dac44c70b28351bec13a9fd8`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
