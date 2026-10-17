## `clojure:temurin-25-lein-2.13.0`

```console
$ docker pull clojure@sha256:7cba4408349f33da581684bc94709b590b9e68423ed5963e069d3909ad081fde
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
$ docker pull clojure@sha256:b64f69d827dc6d05ca895247b5e6d8efb499557ebde9cc3afb37cc84d5844422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168088789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c907721920aea2cda323cfa215e31a82ce3c20d9d6494664fa114d59cc1070`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:51:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:51:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:51:38 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:00 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a20b24f2a8da336b9ae18ec43bc7675b3dc8a761d1452e34ff99000eaeb234`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 92.6 MB (92618011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d04b5a60d529a5357fcf55993e4d65c480ff064123ecaec0d1256fb4735f682`  
		Last Modified: Sat, 17 Oct 2026 01:53:20 GMT  
		Size: 22.4 MB (22437146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f613370edeac03bf3ecc159334965769541459c0fcc51262b35c2431a3667758`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b26d84cb6a97839a577a543ac85de4bcf58dfdb791d2477208de9668c9800a9`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:ec230079bd9fca512aa51f2485f697fe98400fc22b6af4cc8924b1f777751fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f700a7de5438f7d3e4335c4d0125ca9a4b2ce95187dd7fbf94e3f7ef27a2a786`

```dockerfile
```

-	Layers:
	-	`sha256:0dd4f42f3fd397f392628666e40b6e41428137ceecb6df0e0dff06a39f9969aa`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 4.3 MB (4258593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c111e0bf4d0910383c9354ff986b59d748de39c09d79971461c85807d36099e4`  
		Last Modified: Sat, 17 Oct 2026 01:53:19 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c5f030574b13cbcf339e525d47104b161d8ee1c5ff5f8f39aeaf0bbd78836414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166676355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecd648c070daa11578b0d7150183108c31125e096fa3d5ab431571375ee6379`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:51:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:50 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:51:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:51:50 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:11 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:13 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94285f5ec1de5c0d336eab0070b866b2fbc17e4de0060b3c67302ca46c5e72f0`  
		Last Modified: Sat, 17 Oct 2026 01:53:33 GMT  
		Size: 91.5 MB (91528877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6edc8bb1a9b6dd11fe703e889a5d77cc5f7d3ce25f782a103e8cf9037cd8ca0`  
		Last Modified: Sat, 17 Oct 2026 01:53:32 GMT  
		Size: 22.2 MB (22230307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77c12272c43a254c2d0d3732ebe238a1e205b12eea1f88895ce88c538c87f57`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4c18749dfaa7abb294c9add788bbbcc41eb0a4393f830393c31588f3bade7d`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:15f395a16652672313038be125a3e006275561587bfffc8d39d33369473eafea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638ada8e9ba6ec78698076faa2cc5fecb0a5e008fa76dd40811d143a9a607bc6`

```dockerfile
```

-	Layers:
	-	`sha256:da39fddb145d1f0bafe2890885d835ad25a96bb2f46150eaaa0cfdab9b440893`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 4.3 MB (4258277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7a6f4189162035ffa758acfc6e63b9f4bc3c8f39fc6428d0e75b4681661157a`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:035c5fb4e2e29c9abb303c965c51b6f5422c637520f3163713abca6124b4ef98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (170965925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a25aa47d6d6dcae275b91c5739d2b3709eb7093850f8f3fb0768d33edc0d3b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:38:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:38:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:38:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:38:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:38:28 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:42:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:42:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:42:47 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:42:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:33:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:33:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:33:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a37c650d1e52cd8f5083f2f8a779372810c6eb8695d47eccd9c3aad73441c9`  
		Last Modified: Tue, 06 Oct 2026 09:44:40 GMT  
		Size: 91.3 MB (91256289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e0bc8048d91ef5eff049446265086440215a4d02f24a6a0473fca9c22542a7`  
		Last Modified: Tue, 06 Oct 2026 09:44:37 GMT  
		Size: 22.8 MB (22831238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8841b1d84e180c4072c1c3f980a7d770929c668c3942ea55899f3ab8eebd8659`  
		Last Modified: Tue, 06 Oct 2026 09:44:36 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fe998987a4d3e51a0182068eb7e12f8a7e421cabe95dd36887782a884e0589`  
		Last Modified: Tue, 06 Oct 2026 10:34:09 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:2c3b4a1d0f96f6a437577208b56e67b1b2f0cc46e00c5756d6cc00d257f76a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b95e4fc0feee08146ecb4570888f01b0bbe0b902fbd5e64de7cf326edff314b`

```dockerfile
```

-	Layers:
	-	`sha256:d6652cb984f77881e1a2bdb2fbcaa1401860fa9ef31d3dbc3c85613a162e5215`  
		Last Modified: Tue, 06 Oct 2026 10:34:09 GMT  
		Size: 4.2 MB (4243802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd2cd12efdd6153160fdee0cd78ec74f50bea2b7491e24b89a928e90199824fa`  
		Last Modified: Tue, 06 Oct 2026 10:34:08 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
