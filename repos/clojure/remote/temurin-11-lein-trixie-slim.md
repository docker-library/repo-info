## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8fcecd116f4e2e43b60ce1912db85a56e7235e9dc85d6f83898b5947b19f95a6
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

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d18b694757789e32ad08e0a8f0d3e3c7cd424e98259b4e1d6aa413898b937cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196938097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a53103d2bc5cdbf5e0c6aa606e2df09af26f57f2682ca8fa52ed2b6920e73dd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:17:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:17:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:17:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:17:10 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:18:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:18:20 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:18:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:18:22 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9872342344ad9ca6c8d3d166477b8b1eaf312a43dd51cd99b770a42f40aea7a9`  
		Last Modified: Tue, 14 Jul 2026 02:18:42 GMT  
		Size: 145.9 MB (145886184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb4a8bcee9a1c70f9da3e5982e36e1b7cd66721ca9131b5bc29b0d9dcc4da80`  
		Last Modified: Tue, 14 Jul 2026 02:18:39 GMT  
		Size: 16.8 MB (16755801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e7d76c88487706dd6c3fa08b7319fa0f646c1a8873f73a4d7dba4b285110114`  
		Last Modified: Tue, 14 Jul 2026 02:18:38 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9ab3a770875b7a08ed75670a0c8d5147350fe01a73ace0f47df9041fad78a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a5884d47820fbe0bf68db7ebd48e9d6d0be3a847edc491a8cee38f68f8d0bb`

```dockerfile
```

-	Layers:
	-	`sha256:60ea2f2bdb33bc14296efd885a53e21f28536d1b85ab3a559a08acb621bede82`  
		Last Modified: Tue, 14 Jul 2026 02:18:38 GMT  
		Size: 2.4 MB (2386633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9bac744195b3349da7376239b441b09627205c0776c24e7ace5a62277deb987`  
		Last Modified: Tue, 14 Jul 2026 02:18:38 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:abfb4b63ea3683d1bc73a99c554172dc35e95b14a03c3c154ee7d648dca261f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193962918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e5ca7db33dce91544581b4ae22266ec817551f76a9e341d0e70441cae08c12`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:24:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:11 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:24:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:24:11 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:25:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:25:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:25:28 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:25:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:25:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d328e87a37e4fc8a23e3f2e10563fff151d4a806b52f2a79c848ce00618902d7`  
		Last Modified: Tue, 14 Jul 2026 02:25:49 GMT  
		Size: 142.6 MB (142582186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec08c09cf1313a498e1c990a04f8829077159cad19fa30e85c46e4c46e9c94c3`  
		Last Modified: Tue, 14 Jul 2026 02:25:46 GMT  
		Size: 16.7 MB (16721806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ba56afd99a2ab65655a2ccd731d549db16818970d607b153b6d6e4cdd7078c`  
		Last Modified: Tue, 14 Jul 2026 02:25:46 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03e073d827d7ec9270756d910a7d90e70792b2ca97550d842ac795c573665cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4973215c72f67a86afc364f4ce12a6aba3d00e68ef2b106188fa0da85bc853`

```dockerfile
```

-	Layers:
	-	`sha256:0abcff8a9829ca553a5527253d7709e5f68cd075c1653aefadd422eb3f1ae08a`  
		Last Modified: Tue, 14 Jul 2026 02:25:46 GMT  
		Size: 2.4 MB (2386861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94e627ee19d190f174a922d5519798a33d158818de6e56d918f4117eefe18dea`  
		Last Modified: Tue, 14 Jul 2026 02:25:45 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d4b05f67e2cdebbc98a04ae76831c3e40e0176c2eac9e45ae8eb83ca49fde1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188014080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77313a62829d8ec81d461c09b5f5d276db6bbaeecd81f20acf9fcea219973627`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:00:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:00:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:00:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:00:10 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:00:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:00:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:02:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:02:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:02:36 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:02:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:02:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92baef43e33b2e3216fa49fd97c4c72e963f07fed6f47bc27884467e4bf4edbf`  
		Last Modified: Thu, 02 Jul 2026 07:03:12 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c3ea40fedac9f61b6126a46a3f75ac23a6759fd84e2e346f3e9bacd062cd30`  
		Last Modified: Thu, 02 Jul 2026 07:03:09 GMT  
		Size: 16.8 MB (16782320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596683e76ab5c2f608402beaba19e6ac83b1f4360daeff7cd2616648558c0718`  
		Last Modified: Thu, 02 Jul 2026 07:03:08 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2d6cffec73ad3b19f9e78e71f5d3358f3a619deeea4fbf5bd0dcd28ce924959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f80b0b88f1dffdb105cf0fcf94b0200e4fbc1763b85a14ec85774620be516c0`

```dockerfile
```

-	Layers:
	-	`sha256:c82ae3fc0473c3e08282f5400dfd0795dcda67183cb924319ea43bf646f913e4`  
		Last Modified: Thu, 02 Jul 2026 07:03:08 GMT  
		Size: 2.4 MB (2386962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fc9d73ca1f4162e5b9340138197dfe16c7fa6bd930d10dbdb7c36274137755`  
		Last Modified: Thu, 02 Jul 2026 07:03:07 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:4edb1c0838cde450ee407c9e71a8839d1a3e6793d2cfddb3e92a2c25cef00e06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177793125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff187eefbce3b09dbc867ef043ad3a42c88a9a43fab670f428aa4e1b7f037f1`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:26:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:26:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:26:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:26:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:26:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:26:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:27:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:27:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:27:40 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:27:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:27:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6454c299d84de923fd6a898c5324ed5947d27fffa887aac94615c70cef15e6`  
		Last Modified: Tue, 14 Jul 2026 04:28:05 GMT  
		Size: 126.7 MB (126651544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46a6655119c9a01c5fcb39c144e36e90a470383f4460f7b333af622a962d8a2`  
		Last Modified: Tue, 14 Jul 2026 04:28:03 GMT  
		Size: 16.8 MB (16779743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c37654426ccb5ca8d22ebda8c182f8aa98837f73404de6e1c0036c2ebd0bba`  
		Last Modified: Tue, 14 Jul 2026 04:28:02 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a916d41991b8a0a627308ec67a61daf7565a3545284e255aac32c2ccd3a6b588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b6a92931249acb9b389f3dc9a156017e75bb255177e0f5ad95cf7c9ce3fffb`

```dockerfile
```

-	Layers:
	-	`sha256:fa0d40ebd3e31c1c756b0499d11417620697b3bd7609f5875182f8987a47e837`  
		Last Modified: Tue, 14 Jul 2026 04:28:02 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f1ad27d6f6def1155a67dc26bcfadcf39784264aecfd44a1495ac60b5944dae`  
		Last Modified: Tue, 14 Jul 2026 04:28:02 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json
