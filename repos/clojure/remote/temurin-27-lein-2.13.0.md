## `clojure:temurin-27-lein-2.13.0`

```console
$ docker pull clojure@sha256:bd0792c33d6d07bd389d14457ab535f92d48b0bdad4bc1faf24e02233af99698
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:17a5d150adc069c66dbaffcdde120863c01d2c021e2b1005be9c98c193dc5f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166793116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3828f973489aebd1d455041f7ee1a7a390df48359575fccca1afc120d97ef307`
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
# Tue, 27 Oct 2026 00:55:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:15 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18fa4b6230289abd4689ed84fdf1ece6d5a0bfc881956d7114e8149c4fc8f19`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 93.6 MB (93622520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7116525ce8e9f7119a53f2cb77951407203417f6113db172a541ad162d9eb5d4`  
		Last Modified: Tue, 27 Oct 2026 00:55:35 GMT  
		Size: 20.1 MB (20132906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b708cca3cbdaae1d44efd08d038501026a092083de85640913edf4fd0d73aeac`  
		Last Modified: Tue, 27 Oct 2026 00:55:34 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326ffedc2d02cf15ddee91a0f704f658101236a466ec801ace1e405d79314460`  
		Last Modified: Tue, 27 Oct 2026 00:55:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:ebff1cdd3232c19917c3a53de41775c1ab824daaeb2b8ac17784503cf492a3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6cea0df693daf02ba5affb465d87c3ae89926f8545c1b5eaac1aa7a0f9fb26`

```dockerfile
```

-	Layers:
	-	`sha256:3526237d4fd231974c4a8fc2a00afce76abdd09a94be31336b783248d873f61f`  
		Last Modified: Tue, 27 Oct 2026 00:55:34 GMT  
		Size: 4.3 MB (4252278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:693965729a370bc948c3894a405451454b20059a6a9bcada96fa55e5c0715c4a`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1739c04ce539be933f65849f0de5d062421ecbe3d630d93d78d1524d0c8637a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165528389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37945aa2056e6576725fc937d0122c19c306995cc69a3f764644b4ee2502be1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:53:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:53:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:53:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:53:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:53:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:53:59 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:11 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12a1750296348cbf3b0bab19504e7ed959331c8f1d9ecd6e1026492e7dc60b5`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 92.6 MB (92633042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5455ad30b6c8af3d2b3415585b86db26b14ec89110d024f80fa9f63092fb4a4a`  
		Last Modified: Tue, 27 Oct 2026 00:55:31 GMT  
		Size: 20.0 MB (19976622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11035393eafbd3680b2f5b250f06acfe119e1ce867c781c522412603e7ee33ce`  
		Last Modified: Tue, 27 Oct 2026 00:55:31 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab54adafa2b5865b8bb1301d46b70275d2f9973497c154025bd2bf956f1e75c2`  
		Last Modified: Tue, 27 Oct 2026 00:55:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:0af12c911f12c0ecc188e139fafc538a3a2befe05320fe23da8385dbb205ebf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80ec54f31f7ee0efbd9d009dbcf5bd476310bf99cbcdcce29ef15a4f382043a`

```dockerfile
```

-	Layers:
	-	`sha256:9b2336b5c009bfc57bd84d163b7c4cc7e748cba9ed6c09a5de33f20c8bb02343`  
		Last Modified: Tue, 27 Oct 2026 00:55:31 GMT  
		Size: 4.3 MB (4251914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1466f8611e961b99381cfbff34dcba97e346e4d3f4ba45e06abf84da66d47f`  
		Last Modified: Tue, 27 Oct 2026 00:55:31 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:f8e8dd78b58826c339bc2112153852468d6b71ab030c9d7dad15bb9f64e95aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169492567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d9b3dc423a78cde6f4c38d543396f33eafa6c1ba5d97ebf0dda51b88e669a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:15:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:15:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:15:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:15:07 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:19:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:19:03 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:19:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:19:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:19:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:19:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3bccd29f995b79b7862ff4967223c110516dd07fb12dca0006b4c37d7dba6d`  
		Last Modified: Wed, 21 Oct 2026 11:19:45 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b56e9bdae4f60f2808c576c805bc19f7ffe079ae13079425957b2a9903499`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 20.4 MB (20356389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd23395b90d5f5fc254cd2ed2d1fdff2aeba6b98ccddb190fcc9248910e795c8`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1674b8d0586650300f5beeeb94ff28c14df94a69a8c2070597b7cdb1d1aadb2`  
		Last Modified: Wed, 21 Oct 2026 11:19:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:57b7dff9af08c271b27f0dd805b3eaaca65e8ad4bf8bdf1de12bf24ce7918783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4256524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4878042f9ac9775618c3853df4ddafa356381df0d2307411d050fade052562c0`

```dockerfile
```

-	Layers:
	-	`sha256:1ac53b81ed2a08fd250e93b2d8ba0f3ecee9b9be02996cdb4382bd3438a9e042`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 4.2 MB (4238087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86fc793d27fe1728ccb7d8855c6817faccd411867233e722b4c1bf2e84880eb2`  
		Last Modified: Wed, 21 Oct 2026 11:19:42 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
