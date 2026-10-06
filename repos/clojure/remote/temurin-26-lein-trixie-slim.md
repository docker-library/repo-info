## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:7e2e7d7edcba95c9cd6163fe5cbdbf84ebd517728ee6030a383b6a52098ed592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:85f27f643cdf3680f001be53853a49a36f9d2d0ef74a78d50ec0b17299e9c931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148634124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed92d6de482cc85ba473a37e06923a3485b83ef837f814c5a964642e947f4bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:49:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:53 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:51:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:51:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:51:12 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:51:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:51:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:51:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:51:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0aebf090f646cee754ba6512f45519c2cf853a8c28682d5f0f41083313d82b`  
		Last Modified: Fri, 02 Oct 2026 02:51:33 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10e477c4ff82f317176e2bf211500d6bb6a5ba7f59e0c5a44f4d56babf3a0a2`  
		Last Modified: Fri, 02 Oct 2026 02:51:31 GMT  
		Size: 19.7 MB (19724617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3423d6b88954000074ac9639161815ccf8f71cd04e9e93b2c74013ade2d8907e`  
		Last Modified: Fri, 02 Oct 2026 02:51:31 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf76288228c0914885f7a9b576bc7039da78830d9b389a6d8304b563f241bc0`  
		Last Modified: Fri, 02 Oct 2026 02:51:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ba7f2499a2cdf185c87b77298b09edaedf0ddc5cde517121978e0f7a2e23ae4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5e5ac38babde23a080c8064157eb4f166b0983a41e60ec66aa6945f99f206f`

```dockerfile
```

-	Layers:
	-	`sha256:6314e806e53b758c12949b38668b6de01b94cfda14e8b72de384f3ac1698929f`  
		Last Modified: Fri, 02 Oct 2026 02:51:31 GMT  
		Size: 2.3 MB (2337924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d636eecb5dd1055cf05b2630bae3b3ac07eb2e1868810d7ef55f4829c9ad46fe`  
		Last Modified: Fri, 02 Oct 2026 02:51:31 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4016c1de64c96eac7fe67a693c92773049453c85bf6ab74cec74cf440e5ac66a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148294485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe98d0e07664f7d36fce709f39532be6f460c7041a02ddfa060aba6d71cfd5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:49:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:51 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:51 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:51:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:51:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:51:10 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:51:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:51:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:51:11 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:51:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0813b54c3169bc7f2d2391bb9f57169abb41213028ef3559125cc9be0fead6e9`  
		Last Modified: Fri, 02 Oct 2026 02:50:29 GMT  
		Size: 93.5 MB (93543595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644fc92ad7129e1795d3c6e27bdc336272a5cd6a474a2986a1e7df9779089527`  
		Last Modified: Fri, 02 Oct 2026 02:51:29 GMT  
		Size: 20.0 MB (20045592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04f58626cb9364f4b526e20b234f10b45675d59b136249bd74d46772d9c8ea6`  
		Last Modified: Fri, 02 Oct 2026 02:51:28 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8fb6509f572761186640a8e8a83b2f0666af36e7cad5f938030ca3c6036ae9`  
		Last Modified: Fri, 02 Oct 2026 02:51:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5a582b6c425d1edb58bc690d81132fc0101545639facde0c9c27c277128f37a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2ef6957472e5417fe00fda88bbf3aed3bbd0df06eafc13aa3fd04a57519e9b`

```dockerfile
```

-	Layers:
	-	`sha256:c89d5992b4434f872f5820cab9ffb2481547bce9ac8eaa9296346f6b22472d2b`  
		Last Modified: Fri, 02 Oct 2026 02:51:28 GMT  
		Size: 2.3 MB (2337531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d6cce327a9bab14587500df3a81799c957267f7e8777dcefcdbbc49513de92a`  
		Last Modified: Fri, 02 Oct 2026 02:51:28 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:910d9dd25e736ad2089930e77cb67e2f6bfc3e577640d09da24bef082459e20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148301040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105a0e13153a3119e2e8b0d54bfec336297e4bd163a302d171ff7ae902d61a67`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:49:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:49:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:49:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:49:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:49:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:49:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:52:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:52:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:52:42 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:52:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:52:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:52:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:52:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6279b0cce2d4e2d63d6ccefa1877ed2751fceb21434a0b490d4569b26752e991`  
		Last Modified: Tue, 06 Oct 2026 10:53:38 GMT  
		Size: 93.4 MB (93350868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c67d96be6ca62d97f0fdea15256293c97b1a254905924dab01072aa63dd917`  
		Last Modified: Tue, 06 Oct 2026 10:53:36 GMT  
		Size: 16.8 MB (16782942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea235ff65cc27853ed45d426f0116310aad1b255fbf3083ef2d4be2f372c85c3`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ccf9d5ba16f5660aa1fa33ff5795c41cadfeb5aaf20aa59d15e080edbcd865`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a3a573924ca2a162e92b86cb4d95dfc2933b2657d489969295a97310e277591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e214532f14100c9c60b960bc7ed65323409aaa07004349994badb76c188a`

```dockerfile
```

-	Layers:
	-	`sha256:cf76a87ebfb57e4d8ecc99bc9c3f3fcc0f0e229bf48a3936abe059f0ed726b7a`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 2.3 MB (2322840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b997b533d0df0ad88d52e258c22ecbbef0dfa7daa43fb604fefadfcce0d73d1e`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
