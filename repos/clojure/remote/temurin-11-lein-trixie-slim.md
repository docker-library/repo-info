## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:1dfdf9f3a454ff9929f0d235f0f894075ec6d8dd3631e1e5ae3e426ae4c8703a
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
$ docker pull clojure@sha256:4975e44f3721a75fa6f67ca38ab72bd9b7b9d6eac93ab7d059e4f633111af02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196912881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dba760592bd65c9b16e417d13d89dfee9ccb3dd946f02618d9dd4d12684e2b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:26:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:26:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:26:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:26:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:26:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:26:34 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:27:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:27:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:27:52 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:27:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:27:53 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabbaa866c7cb103fd6b13fb0648c5ab356a333f4cc058958212245307191103`  
		Last Modified: Tue, 25 Aug 2026 01:28:12 GMT  
		Size: 145.9 MB (145861364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55dba6e9fe5ec2b744c2243b4d00a5d5b3b9182bfe6bee391f78839ab4209057`  
		Last Modified: Tue, 25 Aug 2026 01:28:09 GMT  
		Size: 16.7 MB (16743624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6e567004d93bad2db5a4c037a68b7b8a482a8565f2dbf40375f642fb1a99f5`  
		Last Modified: Tue, 25 Aug 2026 01:28:09 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:90c08f9d156817827a78e50c64d8968376b9871442192a8f22d8156453ce96b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ae939b734ad9f11b51f636792c9327cbf586edae4aadd82d0c6693d100ed60`

```dockerfile
```

-	Layers:
	-	`sha256:c0cb2b9ea8dfde06f0e8b485c175f41b0651522aa37cc7dcc4718398fb6b101a`  
		Last Modified: Tue, 25 Aug 2026 01:28:08 GMT  
		Size: 2.4 MB (2386829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427a135bae0888425a2f17d1b20a320341814b61d03e47fb2bc0cd1cf2c35338`  
		Last Modified: Tue, 25 Aug 2026 01:28:08 GMT  
		Size: 15.8 KB (15763 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a26f2d9f0b96c8ff84648d9e9acd75191600dfb00e82da4faea52843ff96b300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193952795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef03ec3e0be34b2e6ea6228eb794515d8bc71cf2f54dd4b50b2e84f8ba2f9629`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:30:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:30:26 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:31:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:31:42 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:31:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:31:44 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10167f0b4749c6857d5c2c5fb7de1972a03205e4902e886f3a822daccbde2ed`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 142.6 MB (142566585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da863d075373356be2b8e0c5902bf0bc1b4a696d3efdc8d5a23c49c1395256c4`  
		Last Modified: Tue, 25 Aug 2026 01:32:00 GMT  
		Size: 16.7 MB (16711425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625525f78b103cc9111fde3c4459fd4a63e7e1b307461d9646d5a43ce286ca3e`  
		Last Modified: Tue, 25 Aug 2026 01:32:00 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d036934de4a5dbe4c21df9bcc5d65691165a821499a9fe1088b72735af768d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f2f9295cec057d6eaac51c236be962f20fcb091b43ad8a1f6d226038c627c7`

```dockerfile
```

-	Layers:
	-	`sha256:bc69024ee85272b99a9fbd698c39fdc15dcbb7c2bf8009e46b18476e3b8ed0d2`  
		Last Modified: Tue, 25 Aug 2026 01:32:00 GMT  
		Size: 2.4 MB (2387057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b6885ad2417971cc429f0f94de1e862d82648621d59fc65401dfb6c576ced08`  
		Last Modified: Tue, 25 Aug 2026 01:31:59 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a165573322f76ee902e598a1e419175186d157e2567845b37e19d750c12e3625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf713e3cb64a19def1258706f4a8cf0621bbe02f6e04ac779a86049ffca3d3fd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:37:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:37:20 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:37:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:37:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:40:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:40:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:40:39 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:40:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:40:44 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084b8690c19959508c59fd39f894e560873583a3645792800fb1e42ab4d47b40`  
		Last Modified: Fri, 21 Aug 2026 21:41:18 GMT  
		Size: 133.1 MB (133089927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c84a650e43dd4ac13febea0358ec892774edee74628332dffd49d2fa122a602`  
		Last Modified: Fri, 21 Aug 2026 21:41:15 GMT  
		Size: 16.8 MB (16782279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae3af297df5ae92159ae933f7ac060d1ff7e0ad686f5c95288b5238d8d4f82c`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:052c3daa87a5ea400682841199afc347eb45e209e41dbb5210602c2ab0948372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb37af3fb28c65b983e585f59b57b8a847a55b0c931cf9cefbf1675df69bb257`

```dockerfile
```

-	Layers:
	-	`sha256:3a8e8229273e7ac99ef0ddcb05c5df863dd8725919a3e9b5e2241fe54a32da86`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 2.4 MB (2386996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b15eca3d85599ad8a2cc1625f6f0b9c3c884a0f3b8cbe7f1400aa36cb2db77e`  
		Last Modified: Fri, 21 Aug 2026 21:41:14 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:35414e34e64db55c81cb4ab2b2c9e34bdcae312bb6fb862ad659eeb8e295403e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177804134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fae96a58ef4c33c92097b34db2e09a9bcb40b77666af278c0e7f7ca3f6e2ae4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:05:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:05:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:05:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:05:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:05:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:05:04 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:06:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:06:18 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a91f1904e9a416b03f7e4bf8f48a3356943ed5e958efb6194ce8b59411ae8e9`  
		Last Modified: Tue, 25 Aug 2026 02:06:43 GMT  
		Size: 126.6 MB (126641467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c251eb101687a1f9e58387aed4471ee4bad12e5aefd9d7d0eaf1cc4f9172fa`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 16.8 MB (16779731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d47523aa959e40cf607bd8466635ee398866ae388403c3e466f5b8dc91a6b9`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e370ae163f96a71f0b7ee38d6ba08adc95085377a7d7cdb960fe29dfda61dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2399024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac923f4fa8c1f21de90392d755b7b1f8201e6eb481988c46bdcb7172f668ff60`

```dockerfile
```

-	Layers:
	-	`sha256:8782f2dae228bc8bb8598957ae55e2c588be0426347c6f1e9c52d9001fc1b855`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 2.4 MB (2383260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6610582ab995bdb1619fc974e1096032add0b7f84bbf436819474ac572471f62`  
		Last Modified: Tue, 25 Aug 2026 02:06:41 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json
