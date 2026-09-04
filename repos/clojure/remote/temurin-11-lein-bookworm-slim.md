## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:dd534c3fa0830afed2c287722f0a98d2a6b643d08d99ba5795421da46ced7850
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7b37d685efdc410d01fcb0e4a0b918ae371e0ed945b0b8642af9115929f397d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196681989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5164d409b8489c2a50e267f3e0f049ed55b7937911951a884f0c1b62884efd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:25:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:25:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:25:30 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:26:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:26:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:26:40 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:26:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:26:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3237c176db465d760e9bbeee1b2bc05fc10bc24f982f4da1a46b946fa48bf1c0`  
		Last Modified: Tue, 25 Aug 2026 01:27:01 GMT  
		Size: 145.9 MB (145861364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15fb4c531f5765edc938a9c701234ca2b948401ecb45d5835b4283ffd47c794`  
		Last Modified: Tue, 25 Aug 2026 01:26:59 GMT  
		Size: 18.1 MB (18072720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad297eaca2435e4791e614ee33ce445b92cdbd74a4ed8f94a4c04dcd3c8268f`  
		Last Modified: Tue, 25 Aug 2026 01:26:58 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a4ee6d67ba8926ac29829d482c8f8ed6cb07b4a25bac97626113950b715a7e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6bbf58811011debeab1ce44f47b9382954fd3b87dcec7e29b6f2a30b1bb9eb`

```dockerfile
```

-	Layers:
	-	`sha256:698228378ced363b8ed9f19d8bdc8f6df21a8280e3b4aeaeb8120a627ea520a2`  
		Last Modified: Tue, 25 Aug 2026 01:26:58 GMT  
		Size: 2.8 MB (2757090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7df776e0bf788b6a2a96cb43012e3e0a95a18f1f7a2c87fc69dcc55986dee82`  
		Last Modified: Tue, 25 Aug 2026 01:26:58 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:67994df86e5131ab4698ccd764c426b6539cc78f5ceb4a6abec09f893946fc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193105632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b230510451ca4d554a4e0fab82233ca6dceffa0ca00befa2dfa12250fcc9d476`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:29:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:55 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:31:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:31:04 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:31:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:31:06 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52500328554b3bed868d0158b45f66e16abef18a095c5b92bc6e781cd042a53e`  
		Last Modified: Tue, 25 Aug 2026 01:31:25 GMT  
		Size: 142.6 MB (142566586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae3a2102686c3644c1d1ab78ef24c1343526518d3545aa6960a39d951858bdf`  
		Last Modified: Tue, 25 Aug 2026 01:31:22 GMT  
		Size: 17.9 MB (17906532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e985ce05c857e490a178bd84cc4f055bf1268b39a1521c43af722aa702566c`  
		Last Modified: Tue, 25 Aug 2026 01:31:22 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c60ccb65b66cc32662d613832da31eb6b6858f5368ed713a00de73b909f33175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1267f4bd1ad73d7d73ce5fedb40fa15c547f956053b0941c949b80aba9ed181a`

```dockerfile
```

-	Layers:
	-	`sha256:a074d1ea4577af969f4a54700fe43ed04465a2d5ab876dfbc95c11453cfbce28`  
		Last Modified: Tue, 25 Aug 2026 01:31:22 GMT  
		Size: 2.8 MB (2757323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03e71e01c7a11f8c96eda839d6bc27edea3f28a4a77672aa87887c3ad1f553e4`  
		Last Modified: Tue, 25 Aug 2026 01:31:21 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:eb308e448695b802b26a37e8bc638e411b8457878f857c79f2417c2cbeffcc92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187960628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa708f51d7dab3aa6db9a6a49a275557b6a2c1ae58b35471dd601a51cbc95d9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:06:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:06:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:06:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:06:29 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:06:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:06:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:08:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:08:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:08:46 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:08:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:08:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4895a66daedef2a81ee343f328b9f2667851f4a07cc9ab99da86a1c93f9c441b`  
		Last Modified: Tue, 25 Aug 2026 08:09:25 GMT  
		Size: 133.1 MB (133089920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4d3c2dba366d7b1005c9e949bbbac5b6783bffc386a9d0308adfaf4d0d52fb`  
		Last Modified: Tue, 25 Aug 2026 08:09:23 GMT  
		Size: 18.3 MB (18278972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0932d81275bce5f4ee24a0a4a85d20dc9b334e066f35fe641c1cc3e766184782`  
		Last Modified: Tue, 25 Aug 2026 08:09:22 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:89e807bbacd95452888c79f8066ecc754a71224c5f17cfcf888c5f1255fcafc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca71838e54d6c4faaae7173674654bb80fcf7a9cbadcbb7327d9914e553b2526`

```dockerfile
```

-	Layers:
	-	`sha256:c70bf846580e49cc1d0b5e16e537d62e700358c824302ede6954b8b6e825e87c`  
		Last Modified: Tue, 25 Aug 2026 08:09:22 GMT  
		Size: 2.8 MB (2758308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36b7c8fea88610d3ddfd1a307b11437d52bdae99f0a8864ba1f0af9057b08579`  
		Last Modified: Tue, 25 Aug 2026 08:09:21 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
