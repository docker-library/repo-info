## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:dfedc512210f655c3b20fdcb72b3c3c818fa3aa8f8848b31d5b8275cbf544a32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

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

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

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

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:b4cc5d1d57139422b264f515839ee9eeb07345da74578700ac06e3583143e292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234891605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f7ea4fd63df4cd1616680f44d4233067e87fdf641046c0fe6b8f9f9aacae2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:34:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:34:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:34:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:34:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:34:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:34:10 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:37:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:37:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:37:44 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:37:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:37:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:37:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:37:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e920596c43bd41e327f2c6a1f0843ec0a40160e12dedb97d7849e1cfd24062`  
		Last Modified: Tue, 25 Aug 2026 08:38:29 GMT  
		Size: 158.3 MB (158274933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac586bf9cdae2864a68a7816b28d472d30ca95f722cbc008ced4fcca65078b0`  
		Last Modified: Tue, 25 Aug 2026 08:38:26 GMT  
		Size: 18.9 MB (18936754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c92fbb758074cf58041896863e15c383c4ea9330123e181ee660da07558e54`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa9f2fa0b483693e820de0b85f961a58c907480c7eb3287eeb1e5f1f56ea746`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ed6baa156da1b1eb2bf8fc4f701d6307922578de5e8e43a309e3015ac4518096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefbc5f58f5fcfd5d8c9d733117398c9cfb679a1f16568b9c760a9e32ceebdb3`

```dockerfile
```

-	Layers:
	-	`sha256:5c0fb4864cbc351f498b09271003647e906610728f56b9c0810112b2ae248c3f`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 3.8 MB (3825684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ac7f309fa0d3ee744e96c675ea2e2c0b28e6191f27b26fcbf7e59477caa9e7d`  
		Last Modified: Tue, 25 Aug 2026 08:38:25 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
