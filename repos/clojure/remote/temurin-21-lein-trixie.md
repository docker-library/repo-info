## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:7fa38bbfbc909131fc9d545b23969d64273b0d6fa4729faa16b7896be56889aa
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4b886762b1368793cdc567ecfb344c3b8702a60b08d9334169316c7cdb6e1a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230854282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea31d4b8edfea8efd0680cae27a1305688d50384b127cf25753db099b9a1059c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:29:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:23 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:39 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476247e7c819de16614d0e58336a427c22c88347b249169dc372c19b6085f1d4`  
		Last Modified: Tue, 25 Aug 2026 01:31:01 GMT  
		Size: 158.1 MB (158120295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fc87b1d4fed17b419850a6289fa9385bc755e7332377a01dc29671b8f3af83`  
		Last Modified: Tue, 25 Aug 2026 01:30:58 GMT  
		Size: 18.9 MB (18880537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8d7778bd3cf0514e924c2bea172bcbb07f747fb1708406b36fd59981c3ca7a`  
		Last Modified: Tue, 25 Aug 2026 01:30:58 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a32fdc9bf990fce86fe1a1737095a4353812c60d8779a5e0d62a8b6307a497`  
		Last Modified: Tue, 25 Aug 2026 01:30:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:74ade8d415fd3598b13d4aea3a17fb943a690eb3f5815d4b722bca12de735215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22600425e0095357fd99dc9c98dfebd3e70099b5e8bac943a605bdf8a6ed0e01`

```dockerfile
```

-	Layers:
	-	`sha256:0e3720a99511049a88917770f90dd5a373074f806026f9c5bfdb8a590a242891`  
		Last Modified: Tue, 25 Aug 2026 01:30:57 GMT  
		Size: 3.8 MB (3824684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d210d6f1487aac12b2c956d49c687464805d57241cd845bfd5e29d7765debd5`  
		Last Modified: Tue, 25 Aug 2026 01:30:57 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4c79fb6e4795dc922ce5b367c1f991c0be7203e12b7e47310f83d7fa683d88c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229461962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b97e21451d18aafaf2fee2378e1e78959c539b4a8e36c6e692f3725b570747`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:47 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:33:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:33:47 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:35:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:35:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:35:05 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:35:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:35:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:35:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:35:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfee37b5a2ac0a7541830d03e363a0c7e877537f21766ea611aacf826fee145f`  
		Last Modified: Tue, 25 Aug 2026 01:35:29 GMT  
		Size: 156.4 MB (156401921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b115c491c67eb8c59c24c28fe1c8c2662befa84aab26b2b6cb42f6930519e126`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 18.8 MB (18839540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386b0d799b96ef6eef40016843e95d49e767590ebb6e120ebe6a223bde8c4dca`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d305389b2b23d5577102ded39175df4505cfe09b3581e531acfba3f8ab88d4`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1d6a7c668b03dd4e434fa0048e87c061d040670710ae6e0be29596335ebb811b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a992155da054cc5964e109189b34e8257da1199e16220c82a0a8b08d9a9f7567`

```dockerfile
```

-	Layers:
	-	`sha256:fcd9f8054d6a0f5dbfffe1d51b4a958e6c4d50a22df22b1266b469808c30feac`  
		Last Modified: Tue, 25 Aug 2026 01:35:26 GMT  
		Size: 3.8 MB (3824924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95f058c053fe5c402f1f4ac410f07aa005f051bac2f413a3ffd1fb28dcd16d74`  
		Last Modified: Tue, 25 Aug 2026 01:35:25 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:24268a27ba83e14ee1b9f48c4cbc21a8f2ccdb5016d647854bd05fea3fcd5dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234860760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:557901f63e28ba9aa00c02b2dbaa6240f31c59e4f6d4808047b84f69d7011b4f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 22:48:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:48:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:48:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:48:48 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 22:48:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 22:48:49 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:51:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 22:51:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 22:51:40 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 22:51:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 22:51:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:51:44 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:51:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d4035c00299008a6ccf893c468dbdcf89e49c00b2014da205e910548b70f95`  
		Last Modified: Fri, 21 Aug 2026 22:52:24 GMT  
		Size: 158.3 MB (158274935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bff76f78a34d251859b71f9e84f6bc41264c3005f04912e77870c76bfa29a5`  
		Last Modified: Fri, 21 Aug 2026 22:52:21 GMT  
		Size: 18.9 MB (18936570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862f5f7fb5cfb1c8ab6ee3b8f33bdb92085671db6e92e871538d69386b45347e`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62602cfc37f28555f9b4552928261b153071f2663074e7e9ad2f946896fae8a7`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6e439cc75d25304da0f4942b5acf3da5fc1b93f3ee9b5bc66fc0702a352414da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ee802352b33c21642043e6d43375f63ff605f62248923838fa9a69557454ac`

```dockerfile
```

-	Layers:
	-	`sha256:f46ac64bb05d5857cae44107220794ad39df3f13bbf8f871c6697c8b4e6f48d2`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 3.8 MB (3820706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a00bf743e5ecfcb43300045f9031d0b531f20af24a8d2c930cf8af9b787fbf5`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:e54460ec18a1de472f4e2d082bdb2b5996d5c6ef0f9386b695d1292712aa693a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220192171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a70ab666f48c98a2327e306d2aa92666ebd13fe59a9b4b20c0c572d574675c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:08:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:08:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:08:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:08:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:08:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:08:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:09:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:09:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:09:28 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:09:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:09:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:09:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:09:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b912fe75edacf74bf32e6abad9b85b2eafe7ac06f68b0c19114361c125df52`  
		Last Modified: Tue, 25 Aug 2026 02:09:57 GMT  
		Size: 147.3 MB (147347818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecda94e8583cd623fb8b461de424f07810e9d526e2ec8a4170bd95022b4cf8c1`  
		Last Modified: Tue, 25 Aug 2026 02:09:55 GMT  
		Size: 18.9 MB (18922059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99a830e3452644d7b6259e731da281598486362a7993d142912abe6dcea494d`  
		Last Modified: Tue, 25 Aug 2026 02:09:54 GMT  
		Size: 4.5 MB (4515167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f781126d4191cabe295175e6dc8b398c5b67655cf9ac2d443f637c5d5926f136`  
		Last Modified: Tue, 25 Aug 2026 02:09:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4cbe51bbb27b5c54d14915b4acbf78dc317749519abb70a97a98c5ef60251735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824b22c42c912aacbaa8fc3e270f6971669507293733f4dd8628bf4e3aae140d`

```dockerfile
```

-	Layers:
	-	`sha256:d7837d5ea5f1d21a62cbbbba17fec16866a4a116e56ecf34ae77f0051e6c8d14`  
		Last Modified: Tue, 25 Aug 2026 02:09:54 GMT  
		Size: 3.8 MB (3821111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd3a704603c8a6abe5a6a4eb3104171369c87086519ae2965edaaa2c90310fa9`  
		Last Modified: Tue, 25 Aug 2026 02:09:54 GMT  
		Size: 17.7 KB (17716 bytes)  
		MIME: application/vnd.in-toto+json
