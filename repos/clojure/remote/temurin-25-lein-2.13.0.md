## `clojure:temurin-25-lein-2.13.0`

```console
$ docker pull clojure@sha256:162ced5ec90089b27219bca792f9d190ad0c57e98676625d0c88223427402711
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:83215e36db6b53a1789ea37a538edcb95303dcd1d264f6522960f637e1e4fb90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165788499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7308fe0834321889ee311b42a056a6530f68e2c65b9f5dece79da0817290c9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:51:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:51:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:51:14 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:52:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:52:24 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:52:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:52:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5688be8e09f29ebf26cbb0001a637ae36a894cf316021961839e2158ccf0e27`  
		Last Modified: Tue, 27 Oct 2026 00:52:48 GMT  
		Size: 92.6 MB (92618058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e391bfe21db3c3a0cdff8450b696d03aea5c840b5aea1d9cb414fe175dfd3d5`  
		Last Modified: Tue, 27 Oct 2026 00:52:46 GMT  
		Size: 20.1 MB (20132711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c49fe88a030c817653be0f1a8e1ddc0dfe57dd7f66aff0f4a496c4c2196dbd`  
		Last Modified: Tue, 27 Oct 2026 00:52:45 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff785dc3d562f8603c5fc4aed07cbdfe2dc996fbd21dfc6c40cbb733f25a2b9`  
		Last Modified: Tue, 27 Oct 2026 00:52:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:7d56b8e70d589fc0e1b87ae4af40d473642a2286db8d82e5ece45a3dd6a63b08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92377432c9c5eebac54ef1bd0b53e9a918b1924441fbc6f297fd6d7f985c92b2`

```dockerfile
```

-	Layers:
	-	`sha256:39db7921d78ad01dc3d3299d90ff9ae73d4c0de0a264c47ea0964eb6fb0a7fea`  
		Last Modified: Tue, 27 Oct 2026 00:52:45 GMT  
		Size: 4.3 MB (4257298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8dea55588588a7ec06683ffcd1311ff763997b9b241d7d2bcbae1fc3e4219d5`  
		Last Modified: Tue, 27 Oct 2026 00:52:45 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c482b164c12a9bccd13a13725e495273b9d997bbae295aec5f635061886d234c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164424383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559ab8f99cdb166e82980cf06419ff477be389a82ad1d856ca7cb77e66c1ab33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:50:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:50:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:50:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:50:54 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:50:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:50:54 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:52:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:52:08 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:52:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:52:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:10 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87558094634ced8b9fdc1b96077865ff0bdb90df7bfcc3580eb136d43b623fce`  
		Last Modified: Tue, 27 Oct 2026 00:52:30 GMT  
		Size: 91.5 MB (91528851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4257fb6a3fc41f697f54074ba825db07ccc8ea268c54c176b3e5d6bcf6877c5a`  
		Last Modified: Tue, 27 Oct 2026 00:52:28 GMT  
		Size: 20.0 MB (19976784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e37bd393d874b032259c55afde643adcbb3ebc7b06910c2a22334bf5030a8b`  
		Last Modified: Tue, 27 Oct 2026 00:52:28 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e9adcf797b9c00eb55f1e6c3de5963840dceaa8910ef9e5f3aae09a1fd4957`  
		Last Modified: Tue, 27 Oct 2026 00:52:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:b6bcc67340492d0c327a4d6faebc9bc88e5531fee8882ef530c6f44198007500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ba847e346e9852249f9dfaf2770b3eeb968c489fbb2eb88a00e17fae74ef38`

```dockerfile
```

-	Layers:
	-	`sha256:bb2b62829ce9507b39267f2116621e6a6e44b699ff8765d232c691ec2713bc18`  
		Last Modified: Tue, 27 Oct 2026 00:52:27 GMT  
		Size: 4.3 MB (4256982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ed1cb9faa42166bd491a759349f8f747434c6223a2171e46578e9f23bf3ef66`  
		Last Modified: Tue, 27 Oct 2026 00:52:27 GMT  
		Size: 19.8 KB (19821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:1f79c462cbd9a7a8d9f4c53bf7d0e2584cb6e0fefef839af6fa62f0eb7e02d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168493919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd7329a59c1612486d5326f905aa0d80cb25dabc7ab300e3228df828cdca2e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:51:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:51:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:51:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:51:01 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:55:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 09:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 09:55:36 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 09:55:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:49:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:49:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:49:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2764aa49be37d3934d851e7657fbfa8c5c1f6c88c2432b9e2d08519d852a28b9`  
		Last Modified: Wed, 21 Oct 2026 09:57:50 GMT  
		Size: 91.3 MB (91256225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc90b79b7cf8f646cb60704370621d4e6ce3d4b73b5ce8f4b44070cbabd069e0`  
		Last Modified: Wed, 21 Oct 2026 09:57:47 GMT  
		Size: 20.4 MB (20357273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1473b2828e734313a198c97ddc9d5bc4da1c6f0cafbd922a2ee680a6eb635127`  
		Last Modified: Wed, 21 Oct 2026 09:57:46 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87b1bf207f43d894cb612d31a42ad69af591a5d5513518f107e26a4316ff975`  
		Last Modified: Wed, 21 Oct 2026 10:50:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:44f7bf11e8c349bf56b66716bbe65d90654692c425e36674db3dfab9471da18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4262215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd51b9eaa80a8a8555f05284eb9396dbf3337a334e392d1be726b99f7a1a56e5`

```dockerfile
```

-	Layers:
	-	`sha256:3ee8499c6d107905b459a88e389fed57d821e0461f8fe8b0c256b261deba16ef`  
		Last Modified: Wed, 21 Oct 2026 10:50:11 GMT  
		Size: 4.2 MB (4242507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85c58a584af9dc27fe7c1eb4f90b739a5e6eb07a3f2d73ecc8ad3459cf4e5b88`  
		Last Modified: Wed, 21 Oct 2026 10:50:11 GMT  
		Size: 19.7 KB (19708 bytes)  
		MIME: application/vnd.in-toto+json
