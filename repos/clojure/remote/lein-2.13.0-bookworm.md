## `clojure:lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:8a188ba85e2c204de7177d533d4309812215b011a4b6863364d25262de5c8bb5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fa2566cae2edc34e673a64a624c770c26504e8f092c2f470f94cf1d567de5b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168088824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db132c9a537b5388591214724e607ba88b46c57c1ff0afcb2c6fa0386856fcfe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sun, 11 Oct 2026 13:11:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:18 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:18 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:25 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:26 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226296e5e40e037edd6ce716302911c8e1f3f2917dc2fe599b72bd7421baa5b4`  
		Last Modified: Sun, 11 Oct 2026 13:12:44 GMT  
		Size: 92.6 MB (92618078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:344b5904552e7ee51d2141ac265b41e61967bede377f1ba9d58a2a22f3b36c8f`  
		Last Modified: Sun, 11 Oct 2026 13:12:43 GMT  
		Size: 22.4 MB (22437115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdfdb0506a6d51447f3d3678e8869f651b6e99203b1ced450190806baf7c80a3`  
		Last Modified: Sun, 11 Oct 2026 13:12:42 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd6c25fe8b822be30b3f5c45e781d012394961c70d2401082c7c54702a57115`  
		Last Modified: Sun, 11 Oct 2026 13:12:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5da83e637f9d3338d4167f996e38d2575b4261fda682016dca11b4abf2d73f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17bb08f8a03a91e9453a42c33849f4c59f7462bdc65da3c6e344b7de2651f5e`

```dockerfile
```

-	Layers:
	-	`sha256:e1777a83cc67a6778c9a937c3ceb6372a55969656f5d53d38077306bdbcbe005`  
		Last Modified: Sun, 11 Oct 2026 13:12:42 GMT  
		Size: 4.3 MB (4258593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45eb062f5d2048ec880604baed4bf2517f3c007eb85d26d8e9ab3111c1758d69`  
		Last Modified: Sun, 11 Oct 2026 13:12:42 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f19219516c454c2f00c5fd1dcd9223290581a612024fb2b3766b867487349ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166676130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa91e2629b007c8125f8fc979488b62b4ff1333f66715264664a2b79c5145fd7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sun, 11 Oct 2026 13:11:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:04 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:04 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:14 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:16 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f016d21f97acb97096ed6307154230c9570f4ff683ec736adca31eb2331bfd`  
		Last Modified: Sun, 11 Oct 2026 13:12:35 GMT  
		Size: 91.5 MB (91528874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090d37955c185cc6d1ac67d4dd827915b0d40d2bcf49fba2d7bbb55f6153ac3c`  
		Last Modified: Sun, 11 Oct 2026 13:12:33 GMT  
		Size: 22.2 MB (22230053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3502b264557cf4f72e8c664d53caeeaef1d8c0588f8112f6335ad19ce2ffde`  
		Last Modified: Sun, 11 Oct 2026 13:12:33 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feacbbee11d7d5682e6922b0a87e49214aa7f8b3c071de945d78ed3603a60f8b`  
		Last Modified: Sun, 11 Oct 2026 13:12:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b94242f7020922731fd0954bc65c147e530c8ed677779bda883468df84b02ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c68079346bcae6d6ddc21d3722d58367846a9080c78ab09a4c896cc8ffc4b35`

```dockerfile
```

-	Layers:
	-	`sha256:c6f571f6a99a8ceb69b74e2aa7c5d95832931139b1d68463f368126f69db4178`  
		Last Modified: Sun, 11 Oct 2026 13:12:33 GMT  
		Size: 4.3 MB (4258277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d6db126735619e3899c763efd6b27c6e94cb1931ce8fec72d8c6c5242ba816c`  
		Last Modified: Sun, 11 Oct 2026 13:12:32 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm` - linux; ppc64le

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

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

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
