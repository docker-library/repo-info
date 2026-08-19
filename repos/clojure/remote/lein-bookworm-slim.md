## `clojure:lein-bookworm-slim`

```console
$ docker pull clojure@sha256:e8c5f0e331eb6a48b61b2b5dac6b4542ca57a47d51196bdf8c6f5994697fbe94
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

### `clojure:lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c972c6cea274b9d90260498523ea66e59797b7c1d5903d40d57f2f869cac084e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143395813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae75e4b9abe7cb97bccbd45a00ea0bfec9902c894e30daf7d02d1c693e75fc26`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:47:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:47:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:47:51 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:48:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:48:58 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465dbfe941c4297c3d8cac92d6ec9125f47872bd3be82c70196902067bbb4545`  
		Last Modified: Tue, 18 Aug 2026 20:49:19 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f25592980cc870ff71e2bbbe32afe8ee0602ac3125c2527db8ef7b84053369`  
		Last Modified: Tue, 18 Aug 2026 20:49:17 GMT  
		Size: 18.1 MB (18073008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972086ff077ee7339361aeace410be855340a82345eca4816e42fedfc9a90915`  
		Last Modified: Tue, 18 Aug 2026 20:49:17 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1a31d3c9c45a56688e060a20ad42cddb208c2059bd858e9031b0508ec99e35`  
		Last Modified: Tue, 18 Aug 2026 20:49:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0feb697f441273479e4ea11befc42e08ca038ce4ba094d3a6acd70bfe9bb4379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069d0a481d8795caee7ed92224f276e409d10f8f9e95495678f1bc549552079a`

```dockerfile
```

-	Layers:
	-	`sha256:ed718355a68aefe7046fa321f10fcd95b1529e0c3d477abd2993dd56f58b5f27`  
		Last Modified: Tue, 18 Aug 2026 20:49:17 GMT  
		Size: 2.7 MB (2705632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4abe505b84210fe9e305aff90ca70a3c2acd92f39848fa9184cbe059677886b`  
		Last Modified: Tue, 18 Aug 2026 20:49:16 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2da3e0a17ae4a3d0855d610785770e162c0a2f8a14ce3811583a8ea4ed88d0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142081771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6fb4cc954b780d66a5c94795bf1364b5ba9664b5d1282cadc26f1de4f1116db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:07 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:16 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61eed72edb6baecc362cd5e9a02b719058eb42a00353697993eb3d0254520ee1`  
		Last Modified: Tue, 18 Aug 2026 20:49:36 GMT  
		Size: 91.5 MB (91542255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddde3f9386583c7ce2580c71b66b087c357540efefc20bd8d473d5cd91579a3`  
		Last Modified: Tue, 18 Aug 2026 20:49:35 GMT  
		Size: 17.9 MB (17906711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24795a72bd1c091ebdc4957480c214a8951520f5da393bbbd3bc6acc0a105e2d`  
		Last Modified: Tue, 18 Aug 2026 20:49:34 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ecc1a554f1d170d0f1d8d5a6c044a96343b73e0c79e47eddb5e2e35bda7275`  
		Last Modified: Tue, 18 Aug 2026 20:49:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e9d5601decc97bd1c7209b05d24f2ccdec6cfc7287d69e3817268ad56aa2453b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827c16e19191ed7d5816fa08524a9ad0aaec86c5d33368ac5c4b5fd8491c482a`

```dockerfile
```

-	Layers:
	-	`sha256:d8058891e7043ddbd6340ac7d422e590fb012ecad5abea457d295b1f56a38273`  
		Last Modified: Tue, 18 Aug 2026 20:49:34 GMT  
		Size: 2.7 MB (2705268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a992f8a73388521b96b0454760ca10b8cc307aff9ecc302c01d937352295ac7`  
		Last Modified: Tue, 18 Aug 2026 20:49:34 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:778c11fd3fb9da04bb8883c90472d4667fb48d60d0d464444f947aa94a922278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146769454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f5aca181edb1e8298679f0cb019e2daeff63d19e9b251e871c436aba05a239`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:40:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:40:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:40:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:40:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:40:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:40:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:42:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:42:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:42:52 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:42:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:42:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:42:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:42:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef5f95add8086a49ee781789ff77d32cc777d31b32c0ab8f6fb83065e18af09`  
		Last Modified: Wed, 05 Aug 2026 03:43:32 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994be8298ef082e63e7263a2339cf558e6c478ad4cb246771f1ca34e5f35bd8b`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 18.3 MB (18263444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dd1dfb0230d88c64c8f9df8e2abd22ecb3118250ea4bb8d54a1506a769b54d`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbb0aab291085402287174a790d21f4a314c4ff3e15d8044c2717b1f0cd928a`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6989cae421890dbda4b5c954ad1b3bb6a89f346ef4621cd4a6020845e7a367f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abcf3ef2491592618fe2da26488c64a3ea430d45b6332bab7a941e1aacba971`

```dockerfile
```

-	Layers:
	-	`sha256:d709294a57e20129cf375a073f4ae34f213859602f856113d1d401b9d77420eb`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 2.7 MB (2685586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8882df9c277c1169c74e42c327988ee074cfd6fd3520755249000d0881e870b7`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0b9c4a1481d266f5ac2d317318f1c94ecf1ffcc9c8d886191336e9db5b40001d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137549028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d7a01d2b6614f14cb834115f7c137d75a1e7f4d23930fffa93b7f72e032b48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:41 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b014273c8a26e1b2e8dc8b06f2f384e93654795408d41cf1438dfacf76c148`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 17.7 MB (17724739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb535136e15de24ee9ac140907e414a8cab2c339de1883620fa31de27643461b`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fef8f0b77dd2711f03f22f8bf29948d829312655c8132e0bfb60c400e6a9233`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:72f560720b85a5cdf899b561f1afff7fc2d91b44fbb856a5cf4952d50c7fa5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2441cd23f44af67eca126669be703afc1eafa05f2135e80faeba2147cc8c39b3`

```dockerfile
```

-	Layers:
	-	`sha256:0ef63fc7b7e75cc5093b927894e56631add80dc812fffe14df0e7e9776dc17cd`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 2.7 MB (2676805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e77373a2933cbe01b612c651d1eb8b3e26066129c5ef3e49f04e2b1af4177`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
