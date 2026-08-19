## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:53feea40593a479ab6ccfb276152b49d2b279069441b47e6290a42cb000622ec
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

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3e762ce8e956bc8564305a227a234134d594228210d067f99f229dec678dc0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209206531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1560737949313484f8e6970f6502d24ae0061fa68280988a4ef977bb7d5e1043`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:20:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:20:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:20:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:20:21 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:20:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:06 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:21 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af2d135a6643c14f414e6dd2202d513654d5c7d87693d03b429b0ed23cab2e`  
		Last Modified: Tue, 18 Aug 2026 20:21:26 GMT  
		Size: 158.2 MB (158167020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9141f28a84bb868afdb60140087a791022701ee03a92e427d62bf20a25cb2c40`  
		Last Modified: Tue, 18 Aug 2026 20:47:34 GMT  
		Size: 16.7 MB (16743147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6c1ef8e19c04892ed271877c8e919390ef234eec81c7456c762d52e17a2a9e`  
		Last Modified: Tue, 18 Aug 2026 20:47:34 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d47e2a90dd48b6a6f05a86f445b125c44443bb8f88f4e35facb47a5cf6d30722`  
		Last Modified: Tue, 18 Aug 2026 20:47:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6acaff6e8ab2b93fc0af09d4c5d8593a4b54e426e95e596d87501cb71d49401b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea4bc1496904204c0771a5835ac53a62e702f9d7fbd44e7f59a29380eec6177`

```dockerfile
```

-	Layers:
	-	`sha256:09d64848f06dfe85b80ba9dfa2e550d98be9970452c6506476c8bf1709224cfb`  
		Last Modified: Tue, 18 Aug 2026 20:47:33 GMT  
		Size: 2.4 MB (2368969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed180e514cfddfee0c62596689014fe8651acf9fa86d535f584da0599300d60b`  
		Last Modified: Tue, 18 Aug 2026 20:47:33 GMT  
		Size: 16.8 KB (16798 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:717d00247fa488a2785f7c0798edfdb2a16bf89ae5974c0c46c15a11ac1c250b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207832139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a34d582ab33858774c3ef2cec665c352581711d3fe30a5cfc646fec0accf7bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:46:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:32 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:49 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14e5f92beb57c2fe0d3b83e091a3913c087fb04ff9729e01c9c44f921cf8c98`  
		Last Modified: Tue, 18 Aug 2026 20:48:12 GMT  
		Size: 156.5 MB (156461218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d66d6f7887dd5c4c88e1ce4f68065c950bdc3938e347f42044a9a490e139bb`  
		Last Modified: Tue, 18 Aug 2026 20:48:09 GMT  
		Size: 16.7 MB (16711672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2243428294c0e09396a1bea82a3fd2836bdaf1b63d2d38cc9cfa5630c5bbc8c8`  
		Last Modified: Tue, 18 Aug 2026 20:48:08 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1addc878309899f848c7530ca5db406d971311c0bda2155a26871b9320b5739`  
		Last Modified: Tue, 18 Aug 2026 20:48:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7069531f178b38b9bc09a8cea5f546863c3299fe862b9765f1d9c3c6472c99fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfd190089500c3feb691abff9d3013b282d6b6b0a351ba19419be6a9ad50c14`

```dockerfile
```

-	Layers:
	-	`sha256:c6587b19dc09614b9fe297ca8487c4e4943b1c2e51d6c6d6513e1985c5d36276`  
		Last Modified: Tue, 18 Aug 2026 20:48:08 GMT  
		Size: 2.4 MB (2368579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3ab2c5989a349a0577d0f71b5a8ff3f6ed0dd63ba7c96aa66557ec731fa12c2`  
		Last Modified: Tue, 18 Aug 2026 20:48:08 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:546763c3106e9423152b7dc28efefd1e52927799be3987e9a017d4cc2526b056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213242685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c822c3acc5bbc5fb5ad23778319f196d2937eed902a2e7b63930906e115efc6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:48:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:48:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:48:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:48:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:48:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:48:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:51:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:51:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:51:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:51:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:51:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:51:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:51:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58428bf81c6bbac943fd99b4ba60c260cdb2e11d88fa9f2435c3931236de029`  
		Last Modified: Wed, 05 Aug 2026 07:51:44 GMT  
		Size: 158.3 MB (158343254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7993453528b04e7a1c68d63f684bd8631b75dee7a520d396f2d77eb81e27c6e`  
		Last Modified: Wed, 05 Aug 2026 07:51:41 GMT  
		Size: 16.8 MB (16782433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e90c1a9102a4c0e66cd4c196e30696e08cdb573cb8b56c78132614454d4f17`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374af3e2586f3fd4d4217fcc682fd7be986e38dd88f26d1e1c892bac7437b98a`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3911294c5ebeb5dfbbab494e10fe68e48711c50751827746fa091a8eed151ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6b64322adfb62520d583219dc52f730d2cfd1011f36426a4f84280325abcf4`

```dockerfile
```

-	Layers:
	-	`sha256:92a75c2f4504b1bc36949724732e05ad0ad37044b1238f7372a295719ecab9e2`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 2.4 MB (2369949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7475059637e2fa35f61f5dd2b0ef586269065bde52ec61daadc20fe26cf429de`  
		Last Modified: Wed, 05 Aug 2026 07:51:40 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:5418e6c876f96beb4f7403b68b23ad4f09ea158025955b1d49f8249c15efe7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198530316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8cf6b0ed62e295fee1f893c06e831204e2e324c76b10dd72a7dae687608071`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:35:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:35:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:35:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:35:58 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:35:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:35:58 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:37:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:37:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:37:14 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:37:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:37:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:37:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:37:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8d6adfa93673e55a91ecfb01c0dad6ca14967d332f10e901f1a9fb9e6f9392`  
		Last Modified: Tue, 18 Aug 2026 20:37:42 GMT  
		Size: 147.4 MB (147388358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8139cd1890c3028449e61118e264fa0bda0a5ffaeb303d64d32ce4b7dab66f5`  
		Last Modified: Tue, 18 Aug 2026 20:37:39 GMT  
		Size: 16.8 MB (16779760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ebcab1e0d689739a5d8e0c14aa5bffb441ae0cdc19457a1c6f37ee4b9acdbb`  
		Last Modified: Tue, 18 Aug 2026 20:37:39 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3de709bd22bee1bfb3ffe3a6448034ac26d42daa6a61b92f92e6e5418967223`  
		Last Modified: Tue, 18 Aug 2026 20:37:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25f115db7af92a9dd17c9ea82ce2c5209a9f560a8612cb1ea8bf68b2b9ffd6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e997f6ff72f593758d524187f784c54fd1b17e2de517ef8ec4d73cdc7712157`

```dockerfile
```

-	Layers:
	-	`sha256:81be87b53dcf417baca66e4fd6bfdb5a82c60b3b1a855c497bf1e53f2032e15a`  
		Last Modified: Tue, 18 Aug 2026 20:37:39 GMT  
		Size: 2.4 MB (2365396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93167d7aa5fb7be1384971e27918c565e7990edc05eb7139980582f2ad312dcc`  
		Last Modified: Tue, 18 Aug 2026 20:37:39 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
