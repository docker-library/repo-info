## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:a6e7a2d3b076f745cc20cb186c9231ca6c0b0a6fbace5ff570be7f16cc47c09e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1be1284dc47bc0162ca9c0209ba5623933a285afa7f96cc18fe8c31d775289ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143713470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2503219f5f9a3b74596e8d25117b4aa8344fd68c3d77a4feb75a44524b4a31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:12:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:33 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:12:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:12:33 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:13:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:13:53 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:13:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:13:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6e356a563ca768ddeb677b9c8f5d842030ab3b56994b05506a4e8058e0a98`  
		Last Modified: Tue, 24 Nov 2026 05:14:12 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254bbb0861f3f3d3bba34253f3c4bc3249b9e50454cbc7c4df43ad2b11820a5d`  
		Last Modified: Tue, 24 Nov 2026 05:14:11 GMT  
		Size: 16.7 MB (16741228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d395b1f75f7809d60d2d03f5a834f1eecea3c5065b5ee7da8ba9a0e1c722165a`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6a160d3277a09febb009000196a7c37ad2e62780e4ccf150be9cf469dd7080`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:54f8982bd3ecce5c16e7e6ebd2ec36df196f90cc575d5312d18e480eb35eade8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ead8a335dbdcd4710e3fdf558f293a5b87b5e60baa943e97052f9500c25867`

```dockerfile
```

-	Layers:
	-	`sha256:3f015fe1c067f8b190e87c4153680a3ec1de6de1b6b8f2dc67f5bac116a1ed4a`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 2.3 MB (2339832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4cf779a33bd9dee2ff7e44a932657ab86698280e252d330a01d51c68f17b46b`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 19.0 KB (18996 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:75c4e799d6ec041e5e69ab17d7fcd4ee6e5a199286d2926eb2c6b5874c30fe7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142985787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b787996c4eb1f31b60dfdb6c7fca89c0bb3f93e43f9fd28d6fd84c7a24a98bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:18:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:19 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:18:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:18:19 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:19:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:19:40 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:19:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:19:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:19:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:19:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3a68fdfa701b261f3f82ab2c47a46529c949027f26984df07c30c69fa3f0c1`  
		Last Modified: Tue, 24 Nov 2026 05:20:01 GMT  
		Size: 91.6 MB (91553944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c816dd9d3b7eafe0b9928f36679e80dcc536df1845c4578c473f5715607c8929`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 16.7 MB (16717685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3774cbf3ec3d973d31ab394fa0f2a193bf35541d502af880d86c130b3e2272f8`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6ae24c798cbbb9ade1e6cf3445924ce535cb79cdf447fbc13493134d88766a`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3fc905dfb8136ea4b35dd515c7fb7a08e34fd54a4f13d7041a07dfc7dd2be80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25a200096d55359370600a03bf511d81a5f3a1a6ece11d19498c192c0631621`

```dockerfile
```

-	Layers:
	-	`sha256:6fdbcbadf9ba17cff3d748ed5fdee4904cd37410aff75acf1e61b8b448c3bddb`  
		Last Modified: Tue, 24 Nov 2026 05:19:58 GMT  
		Size: 2.3 MB (2339463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b0d92ef2c6bc3545965b25e50e701f8b08fd17b823a6380e7413158a8f0dae`  
		Last Modified: Tue, 24 Nov 2026 05:19:58 GMT  
		Size: 19.1 KB (19140 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7f9c61d56e111d0a3c3bf3971724ea3177e3ca6501f2f7e5085cb00ba67221a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145067959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fcc01957f4598cc498b4ea8964f2dba63c2b51e7039da28c01257e495ff6ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 13:02:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:02:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:02:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:02:16 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 13:02:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 13:02:17 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:05:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 13:05:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 13:05:41 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 13:05:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 13:05:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:05:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:05:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560f3e8660c1210bc4a1c728b0fcf9ad5ab5da272b06a41d0723eb7e9e126486`  
		Last Modified: Tue, 24 Nov 2026 13:06:28 GMT  
		Size: 90.1 MB (90119603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c4bb9a3b870f6863f36bde23a5ec44104ec3b07cb6e9496556729cf1f79f2a`  
		Last Modified: Tue, 24 Nov 2026 13:06:26 GMT  
		Size: 16.8 MB (16779555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3070496303ca746b8fa85c78099d2962dcfcfde1da536348452d977b0cd2e8`  
		Last Modified: Tue, 24 Nov 2026 13:06:25 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db8adcb7da12992609bdc12cdf4406c672cfe62f0f84f38d68687ea85e286b7`  
		Last Modified: Tue, 24 Nov 2026 13:06:25 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:635829f8b16fdda6538ffdc7f01ceb385b5a86800776a4d93de84a8d9eaa8c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2341326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd5c954e0a166e8e279ec97921659b529fd6b8e6bad8269aebca51ba6e5a4bf`

```dockerfile
```

-	Layers:
	-	`sha256:f2afe8ad5c9bccb02dc140a4405c9fe6f932996670c4cfd19f5a744fe9e43ad2`  
		Last Modified: Tue, 24 Nov 2026 13:06:25 GMT  
		Size: 2.3 MB (2322275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5074f4d48198f222d92ab9d291f3020f937facd41687aba4291b66b2d68f8dd8`  
		Last Modified: Tue, 24 Nov 2026 13:06:25 GMT  
		Size: 19.1 KB (19051 bytes)  
		MIME: application/vnd.in-toto+json
