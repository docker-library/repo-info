## `clojure:temurin-26-lein`

```console
$ docker pull clojure@sha256:329141571b770d42c901d3aabe4e5f7dc7656e9e0faede9c18b51b2d964f8dd4
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

### `clojure:temurin-26-lein` - linux; amd64

```console
$ docker pull clojure@sha256:2ac9d34ba0c90ee28d8316486191377a92ea3a5590d77abd5c9ca52e8b9158c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167655347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ccde95089e8add9fca3c4497cccc8816cd4abdcdb26deabe06b97adcffdf22`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:01 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:01 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:07 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2c63bb4c0364f52c4c238eaafb583cc78d0d5f71e737b69a8a48f760daf8ac`  
		Last Modified: Tue, 04 Aug 2026 02:56:28 GMT  
		Size: 94.5 MB (94524391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5a3e0f31cead4f934d87ced6fc8ba09c079403981de464b7d27be0a09d21d9`  
		Last Modified: Tue, 04 Aug 2026 02:56:26 GMT  
		Size: 20.1 MB (20117913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490c24a22119dd1ae682269c555148997a34d646f5b4c193412fff03724d805e`  
		Last Modified: Tue, 04 Aug 2026 02:56:26 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7101fbe3339ab8b551973cc4e811aa061783d3327f735723ba3300851bde3271`  
		Last Modified: Tue, 04 Aug 2026 02:56:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:f0c6bd2fd7259b6544d8420de9df073e03d2b9bbe3b2ff14571443fddf3dbd2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe2a2229ac349fa03e0e070341534e488fcaa7fda4bb6937144d27bf0142d64`

```dockerfile
```

-	Layers:
	-	`sha256:8af542dd4dd530268108ea704fc3613caf358d6c2d65c64fbed888a69d6d1784`  
		Last Modified: Tue, 04 Aug 2026 02:56:26 GMT  
		Size: 4.2 MB (4249595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51e5f38f55c5b6036f4b296572dab33ed937e6246374cece67e107bd404fb8f3`  
		Last Modified: Tue, 04 Aug 2026 02:56:25 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61c6696d2e94b3011a1a3e851a19bb95680b398a90fb809006d172bb1543e4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166344146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd494b860d8fafa53dd13084f44d0b5d3d7846b47089c5627acbd1e7c53c7353`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d560b829a1579396843f75ffcc3818c2aad0cf747cb921e8e654c56091c5cbd4`  
		Last Modified: Tue, 04 Aug 2026 02:57:16 GMT  
		Size: 93.5 MB (93504370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed9507763349c0b0c8304126240d173df5a9342fb7714ead4302538b680c5ee`  
		Last Modified: Tue, 04 Aug 2026 02:57:15 GMT  
		Size: 19.9 MB (19940477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855e6e59ac3548b0171cdf056085ccfdad6d037fc140510a099ff245ce32963a`  
		Last Modified: Tue, 04 Aug 2026 02:57:14 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de494c69b04e8d88f0d72aba5e983baad49e5cdc99f2b4c02c0efb1d9c004c7e`  
		Last Modified: Tue, 04 Aug 2026 02:57:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:6b46e0a88080c3c9cf5fd79169203bdbd94deec8f3a283c43faecdd2f610cdf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95cadda8c082617419ffc1b9951abc19d2f49214cca07435149676855fd8ce0`

```dockerfile
```

-	Layers:
	-	`sha256:953c953e3a725955f52a5f24e83b2e129c4e4ab4b0be6d2f6022ffa408793d94`  
		Last Modified: Tue, 04 Aug 2026 02:57:14 GMT  
		Size: 4.2 MB (4249231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c371f0b17a417ab38fb391b52320df8bed1213f2abd15d3f3d4bf89661ed2bd`  
		Last Modified: Tue, 04 Aug 2026 02:57:13 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:45a390dbbac0662a6c19023138202c3c07b01d52e1bd028233eb6f0ff0ea5e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171091915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b960388195b2a8b1b6868d5429001bd6612f03b826eafc89648de3c259179589`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 05:49:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:49:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:49:11 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:49:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:49:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:51:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:51:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:51:58 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:52:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:52:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:52:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:52:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cb3912e499f0dd6b2ff21ecdafe7662e3cc06f89c64f11ac0b1e0e47e71d0e`  
		Last Modified: Tue, 04 Aug 2026 05:52:37 GMT  
		Size: 93.9 MB (93902052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b894539fb7e8bd0f7eb32164b0b61a6371bd25bb97fc58168cb6ba01418d40f3`  
		Last Modified: Tue, 04 Aug 2026 05:52:35 GMT  
		Size: 20.3 MB (20332373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5333a47d6ed796c3bd467fbe7946041074edb33c2a121447f17e8a174ec27787`  
		Last Modified: Tue, 04 Aug 2026 05:52:34 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea112d3008ffd110c86fe2fa229ac4c341d208e0a365ac533466c9e0974d496a`  
		Last Modified: Tue, 04 Aug 2026 05:52:34 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:7fa13cf8cf1aad478260b31d10f023e6a100c2ad521cb2be18d5d814895d7926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4253840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac799c4be0790d4b31d8eb999087bb96d5f44532dca2302f1b04fb309c39c4f`

```dockerfile
```

-	Layers:
	-	`sha256:94a28f79795f37212a217cda585b4c9878790eb40f73a3c0d1925597203ffd5b`  
		Last Modified: Tue, 04 Aug 2026 05:52:34 GMT  
		Size: 4.2 MB (4235404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78b81d0c67360d913335be3ac9ddc261353b8a3406181d430e3c605796d6d209`  
		Last Modified: Tue, 04 Aug 2026 05:52:33 GMT  
		Size: 18.4 KB (18436 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; s390x

```console
$ docker pull clojure@sha256:298215bf16787138a82023c51a3b463ea580fe399db17fb883710b3ef9fac3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161979903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03558689279135e9c5d86ed1d0dc3302912380b5b04fe278c464e8e636101477`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:04:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:04:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:05:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:05:52 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:05:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:05:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:05:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:05:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b100b02d9fadd7ef6d3dd60d05e61617db916a5b1014ba714029c6f60cb0a65`  
		Last Modified: Tue, 04 Aug 2026 03:06:19 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2af4c28d4d321c485e3f3c309db29ae3922f2cd6ba96bccdb19f07efedfdc1`  
		Last Modified: Tue, 04 Aug 2026 03:06:18 GMT  
		Size: 19.8 MB (19769990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bfcd494e8b4c7f6b702cfb833554620c2ed9270c7f30de0bfb3223f31adc6`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f94055cdc5de994f66079829f980803347397c1c9de2ced2444fe3c93558c3`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:2a56153ada23cd5101ac8623bb5c93ec070e276da9095a7d58a2fff7e28224b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4244976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb638605ee6eba42d3d456312301de27aad075a7835ddf9f66719ab6febe1e1b`

```dockerfile
```

-	Layers:
	-	`sha256:215855bd983c1833c6b9fd10e02bfb9447023fbc4e1dda3064367c69575166a2`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 4.2 MB (4226595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37dc07ceb73f8ac9c1fb103549cad234537441bb2968ea4cd524c332e57dc45e`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json
