## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:5a37bbcca8e5f969b11c5612122cbde6917c5ff9d20e4dd0a6fbfed9d10cdbd5
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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6849b161828773069930fd3523d9034cf462d1cc0c849cdf9ed24cf5ce5c985f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146785095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e8b110f3b7cc5a1b3d40c27e23905c51fa909ab1ccd029ceea542e6bd00235`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:30:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:30:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:30:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:30:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:30:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:30:05 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:32:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:32:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:32:51 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:32:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:32:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:32:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:32:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75110ab10d2ed791e257ccc400d7c6d0df222aece9a98ecea62272d5d67edb1d`  
		Last Modified: Thu, 20 Aug 2026 01:33:36 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330db1d87a87bed2248c75b4fb92e8534f2924a09a4a76dde44c696037720753`  
		Last Modified: Thu, 20 Aug 2026 01:33:34 GMT  
		Size: 18.3 MB (18279112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde9781e8aaf8c343bb74c079dbeadde97ccb9a7ac1fdcc563c65cb8d2785469`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a81edac0df2ec55fd2ff84231a2e569e1adae5f6afe981ddfd5001eecfed8d`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:50e7ce6a98eadedb09384b8167daf523aad1dc1369db0d78ff9bdf498f4e899d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6659e75199c530ed30d6c0cf4c8c6bc85646121df282c4e2244ebd5964b721f6`

```dockerfile
```

-	Layers:
	-	`sha256:6f5dc3cbbc5dd72b36fcdeea69e303a05f4254d9f5ea0eb66e60ac429bb621bd`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 2.7 MB (2690789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d671e3e7f3d9c39aab6cff32ca411f04506e4832800e5b23c36e8b199e11a760`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; s390x

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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

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
