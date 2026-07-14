## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:174edd10509067937b56d701b1409d8c6db041daae58e648dcbfc30d28cdfd08
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

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:fce7ee79c9539779361256bfbf4c92397fed23708826026d493aadf806971bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218605654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6cbf93c34b237c7497e8a68cad8ac60161aa90bedceff84ff80aab2dfc85bd9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:16:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:16:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:16:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:16:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:16:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:16:50 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:18:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:18:03 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:18:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:18:04 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c650c6fac84013f895eea185481850fba9f577ac7c042cf94f09b474069e079`  
		Last Modified: Tue, 14 Jul 2026 02:18:24 GMT  
		Size: 145.9 MB (145886184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271bb9a68272cc61ba51e47428c606cd7ab5d975979cb03d80197daf280dd2d`  
		Last Modified: Tue, 14 Jul 2026 02:18:21 GMT  
		Size: 18.9 MB (18891686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58630838bcab083db78966933cb31a289a426e53c8e7c674eaedafd1eef8dd4b`  
		Last Modified: Tue, 14 Jul 2026 02:18:20 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d880e25bf59be188afb8d881a46fe263b09c3255ba000d1e0d0717c3211d6d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0ab0fabe859123e9d5dc0b76815f811cdc03e966256c596898ee838587bf28`

```dockerfile
```

-	Layers:
	-	`sha256:a5f73678cc63816d9e992ce5ecd589ed99821936f176810d6628f506e441eff3`  
		Last Modified: Tue, 14 Jul 2026 02:18:20 GMT  
		Size: 3.8 MB (3837372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8930c31c238225ea136fd939ec36f34595877e7124c3de8774e457de9c642089`  
		Last Modified: Tue, 14 Jul 2026 02:18:20 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0ee9c9241fa2cea47d6df7ec054eed64781b6e7b27aa8e49fc935bffc417f4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215623680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55772ee0c713407dbb526b85690611fd6ab39252b63fb5f519001b658edc93a6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:24:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:24:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:24:13 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:25:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:25:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:25:30 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:25:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:25:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4d1ff3b3ba3a681c6b283296697a7a3a6e66fb0f16e04f286a47c9c18e8295`  
		Last Modified: Tue, 14 Jul 2026 02:25:52 GMT  
		Size: 142.6 MB (142582173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ac4f77c2bb27217f87773461fd5a1b0763b1911bfb3e7d88ec6935c784be17`  
		Last Modified: Tue, 14 Jul 2026 02:25:50 GMT  
		Size: 18.9 MB (18852101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db24934fc61ffcc2e916ebd1175ea3ecd08c9c915a7cfc3d0caab0b6a31ee60d`  
		Last Modified: Tue, 14 Jul 2026 02:25:49 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c3e17011f3ec0c3d7bcd3b08d08c371d3cd6eaff6d604b3b3719f0dcadd43758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947df319fb973f14bf0f17bf945779d28f4c80a9381121ba6fd3ff629466b7c8`

```dockerfile
```

-	Layers:
	-	`sha256:347a479ae144f1c446ab38edb1d967176c8fce862e7f35eaaab8ea4809fb7842`  
		Last Modified: Tue, 14 Jul 2026 02:25:49 GMT  
		Size: 3.8 MB (3838230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1da844ef465abb8e58860f2b4ba6ef3690d49f4d1c378c354e2706834385fafd`  
		Last Modified: Tue, 14 Jul 2026 02:25:49 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:78ae86997ce09a5356c75eab42c417f12775b39e642c803f05613c83c5e391d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209699883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7dff9ad16af619ddf2dc85e5ef3564b502cf120ef76918d0e410c049d558f4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:56:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:56:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:56:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:56:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:56:21 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:59:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:59:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:59:10 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:59:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:59:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf789fe3b4a8a893b6dd07ede6f668e14fa6258e18fae274cd2c548fade08806`  
		Last Modified: Thu, 02 Jul 2026 06:59:56 GMT  
		Size: 133.1 MB (133110126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf64f70194907088a404cbaba41764747770cdbfb9749cc9c7a419a050ece14`  
		Last Modified: Thu, 02 Jul 2026 06:59:53 GMT  
		Size: 18.9 MB (18936435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad8955867269ae0f41dd53e76a94b6a90fb418aa64a51f5d0d699fdb9185592`  
		Last Modified: Thu, 02 Jul 2026 06:59:52 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:77a5242c1153f3a7512d827841506ebda7933a6d7aedf9b9f5d2745593a456a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fac21fa6c4eff667f9baf946712f556cd16a062db2a045839ed365703236d96`

```dockerfile
```

-	Layers:
	-	`sha256:c7efb5b65c11d198ce86034be2c594fc6acdbf48d29df14ae881945fb11a3d34`  
		Last Modified: Thu, 02 Jul 2026 06:59:52 GMT  
		Size: 3.8 MB (3837721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75c15f780ae1b29fc6ec988a4667a63b61c899631e722d7609b2b7fa6465d16b`  
		Last Modified: Thu, 02 Jul 2026 06:59:51 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:4c6b5d114d4bf12d0db25dd1ce0ea4df502591b81296c7f6d2a357770fcbeffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199470230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7c56848aecad7e62c6809efd8e229eac6ee4ca12a3ff0f365fce32cb341364`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:25:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:25:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:25:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:25:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:25:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:25:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:26:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:26:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:26:33 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:26:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:26:35 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86d06f13af0bdf83515f911c37fb8b68eb8dd6842a5ed2dfc9e5f8746a5d40a`  
		Last Modified: Tue, 14 Jul 2026 04:26:58 GMT  
		Size: 126.7 MB (126651524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690cdafc33079e0126d1e8c4184441d9f2dddbf7685e68d8460de5f3010289f0`  
		Last Modified: Tue, 14 Jul 2026 04:26:56 GMT  
		Size: 18.9 MB (18921776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b76acdb73dcfbda1c74699793144b27c02821b0d63fff202b72159db3177ad9`  
		Last Modified: Tue, 14 Jul 2026 04:26:56 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a3bf959ac8f518c7f2bf5d82537cef1784322ed34160228faa8611fef162431e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc02247ce362d0246ca557de4ee624d1cff0e43047c8cdaae5295bd0bf9abd3`

```dockerfile
```

-	Layers:
	-	`sha256:07981d472e29b526cf52ee9e71220471e7d653586248936fc8ed29d3a8aa3157`  
		Last Modified: Tue, 14 Jul 2026 04:26:56 GMT  
		Size: 3.8 MB (3833803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba3b5afdae2e2a1c96966804cb2c05c55d1f04dcafa1ad39f96f45d6f100f8a6`  
		Last Modified: Tue, 14 Jul 2026 04:26:56 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json
