## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:251b50bec33a4a8f3c00d5dd533750b81fd04752a20e10b05ddcfebd1e878df9
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

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d350aaaee66ab76355ffd2911a8600617eddebe27a90b2a001e3f6a472677b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219016241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9e3dc8e405e1cada5c5f7177d610509d6cfab6c3901f1771f011a02a25b9d0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:18:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:18:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:18:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:18:18 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:18:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:18:18 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:19:30 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:19:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:19:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade559725e8bedb57cb4a3efed24efca6a28072e6137828b6b9cf9fbc2cca09d`  
		Last Modified: Wed, 05 Aug 2026 01:19:58 GMT  
		Size: 145.9 MB (145886290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c81e78f72cf58d09ee9091a67ae658119d784fe423be4c71d477893014a09e4`  
		Last Modified: Wed, 05 Aug 2026 01:19:55 GMT  
		Size: 20.1 MB (20117619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfb22b14ded352a13f6037b0a37f2369b17ed87da6cb9fc496b3efcddae9b81`  
		Last Modified: Wed, 05 Aug 2026 01:19:54 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ccaa1e66be9eb22e7c2f51278f268b3fec6e995a624021d5990a17cf274eaf73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a20559ea90253861a25f68b5fd197bec6579cad49b6f4f47cd2ff758cfe0dc`

```dockerfile
```

-	Layers:
	-	`sha256:ecb92aa7699279eb07dc71bb400fad0bf9f01cc87ac6c8ff7abd2165989d12a0`  
		Last Modified: Wed, 05 Aug 2026 01:19:54 GMT  
		Size: 4.3 MB (4303570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c04ec6dd4fc121865e8e8dd26cd63a9e492c6156d3fcb129f85bec4a82e36ddf`  
		Last Modified: Wed, 05 Aug 2026 01:19:53 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:34ba82c5b58fe595cbb61c73168e6b8ae21a120b5ffaf9e8e7dcfed0230fdae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215421395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9add51b8118dac13a290ee76d3fc2926dadb1148a64e0cccc7840be424ff9190`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:24:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:24:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:24:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:25:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:25:15 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:25:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:25:17 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45e8ab4c7b14948c3883470a96cb15cc4985d8765401efc34f730612a7e50bd`  
		Last Modified: Wed, 05 Aug 2026 01:25:37 GMT  
		Size: 142.6 MB (142582304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b78f1b408ced797fdad48712b806eb3b661a8b501001f40a12e913b759f948d`  
		Last Modified: Wed, 05 Aug 2026 01:25:34 GMT  
		Size: 19.9 MB (19940449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ba2c176fe6c014a09009002a8173ff3177a0575eea4dafc23371c34c5c61c2`  
		Last Modified: Wed, 05 Aug 2026 01:25:34 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4bb3c7f09989f30d2f701a65e57888fbc8edef189a30b4ced33c961bda18020f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1a3ef5787c86f6a5382d00db23a415f1fcf6f12ded372a07fee1c2f768e398`

```dockerfile
```

-	Layers:
	-	`sha256:11d33370605ba120090b11b628989728fdcd76413149ed904752b82cf9812f38`  
		Last Modified: Wed, 05 Aug 2026 01:25:34 GMT  
		Size: 4.3 MB (4303803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7329fc18cdc146f8d42c63deb411087dbe88f8e4083bdd70111eec6f32d3a379`  
		Last Modified: Wed, 05 Aug 2026 01:25:33 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:f70a4a1e75ffd9aab350653ccdafda1a732aee792d556054c10a1e345f628c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210298462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b628b7a3827fc805d41eb660ec6e690abe9dab8066eef69c1f9b040a65ddbd21`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:24:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:24:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:24:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:24:26 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:24:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:24:26 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:27:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:27:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:27:01 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:27:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:27:05 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c04b8b0dda244314f9e2399ea50364990437cb5f1ebb9c1a5f46f12f68b63a1`  
		Last Modified: Wed, 05 Aug 2026 03:27:43 GMT  
		Size: 133.1 MB (133109636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836571f67139a096e83b597027b602a931a5410e31e0c5c30dd192e964225974`  
		Last Modified: Wed, 05 Aug 2026 03:27:40 GMT  
		Size: 20.3 MB (20332094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2fe867e2780192b2bfa46bcff36b75c2628dbb12f5355ee0183aa6967518688`  
		Last Modified: Wed, 05 Aug 2026 03:27:39 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:78f965a1cfda513e7e0c759e9916c5407685a9d48a26ab764f26b5a06bc2e644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53994de912e002c0bdc6856a3f441ee28a3356fd58b5700e5eba477578509c3f`

```dockerfile
```

-	Layers:
	-	`sha256:51b5030a750853063bfc288ca8fc97ea59076cfc995e1a9c1ac7d03babc80fce`  
		Last Modified: Wed, 05 Aug 2026 03:27:39 GMT  
		Size: 4.3 MB (4304816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0662e93f5adfba729b6bd358ea3b42dc35fd5f9690b0e0d7fddf9b945784593f`  
		Last Modified: Wed, 05 Aug 2026 03:27:38 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ee9200d7bf7e3e2e10484f6a81c1d9a1e2d06720d9d8d7ffe8349e52b08244e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198095037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4261be3e9b32974d58c30737c04bc2bcc6349645fc4c2c47ae193d0ef4b5be`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:08 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:25 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d65642bbcc0659abb67fb458474d1565054b3f0c1bdf2a9931965ac027d18df`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d85ca611d3c68fede020667980128e2e175585648d4ce7c9a84dfb178bd167`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 19.8 MB (19770084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9e779124100c0c999cba9f62651ab66eccf7c37e6969fc1f5eafd8075d37b`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b76d1fc1d381c50c11672fe0e69787df997a81cffc97df7b6304f7a7de175ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df427527fef0247eca07ab0ea64e540ec38ecb020c5827a983668e549e4bc69e`

```dockerfile
```

-	Layers:
	-	`sha256:1b108ae6466c7d8e9c37f5d01b212b15a82d1d4c863e317b29f7873e186c1c92`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.3 MB (4295388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a030ee785c8f6a672c3375205659bd969ced684675a9e95c1ef4da90f97172`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json
