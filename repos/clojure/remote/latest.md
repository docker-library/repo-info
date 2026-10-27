## `clojure:latest`

```console
$ docker pull clojure@sha256:aa8125d926070fd3809ad6f09e08a601c993950f38c23d51b4baacca8ff10219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:fecf1e495916e2d8ac90ac2ae5e41ea52e48f1e45a2b2d6acf77d4e9c7225917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237876567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f7a6d8b5eb6ed9ca7c59e2e696a81fecbccdd795a3481cdcc878a960251ba5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:45:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:45:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:45:51 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:46:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:46:59 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:47:01 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:47:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:47:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:47:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:47:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dbedf9eb0d50378d5bf0f26d0c866333f91ec3a23c381c2e033888427026d9`  
		Last Modified: Tue, 27 Oct 2026 00:47:35 GMT  
		Size: 92.6 MB (92618044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f275fc8ad1a4d6621f210744d4e191c5739b830ec91edb5dfe5411a5cadf6be2`  
		Last Modified: Tue, 27 Oct 2026 00:47:33 GMT  
		Size: 20.1 MB (20132772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f0ba099ba37f274f4789c67a8403468e25a60e966997bc5602ca0f2572c610`  
		Last Modified: Tue, 27 Oct 2026 00:47:32 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f68d18fea2b1c6334edc2221ab7b2d981e4c9c7cfb17018acac024b0f8a0ca`  
		Last Modified: Tue, 27 Oct 2026 00:47:35 GMT  
		Size: 72.1 MB (72087368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5658386defadf38ffc5b42c504d413cc1a289126cbd983b1576f2fdfaa6077`  
		Last Modified: Tue, 27 Oct 2026 00:47:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eea4feb80fd5f0290d889a7b1186a12a05bdff5cc0f67ec216bc8933794ca0d`  
		Last Modified: Tue, 27 Oct 2026 00:47:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:bbf9dc47420f2845ea7769f89c7e6833c64d62d61bb06497186fa4a50e5a0aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bb4e1c952ac33327f5ab7f00ca25452fbbc5d399344adf72afe10b9fbf10cc`

```dockerfile
```

-	Layers:
	-	`sha256:891a04d51bbd15f3421812b1daa3ff20264754c3c1203631d00d7dab3829af00`  
		Last Modified: Tue, 27 Oct 2026 00:47:32 GMT  
		Size: 7.4 MB (7439617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:756e31a73ef90e6f81db3e5abec61433c195ba6cef46fc9af1f35604f94317c5`  
		Last Modified: Tue, 27 Oct 2026 00:47:32 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5fb325c5ce26824dd658beaf85497f3aea74f66812ce471f06fdb08ececf2b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236683320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e83658ef272e7dd0f97ac2d39075d66fd71fc84f9a77c106bb9d9324a71c13d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:45:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:45:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:45:25 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:46:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:46:40 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:46:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:46:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:42 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:46:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:46:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172beba131d4ee2f4029c63764c6a729ce8516f55b67730c34f77120fdd6c307`  
		Last Modified: Tue, 27 Oct 2026 00:47:19 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c566da87664da5f1dc0acd46667e9e08745475bb9c4fb7813cc8c1c835db505f`  
		Last Modified: Tue, 27 Oct 2026 00:47:16 GMT  
		Size: 20.0 MB (19976500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048b68c497e96157c41159d0ffae51a48e277e511eacc3c50c57d5ba87adbd25`  
		Last Modified: Tue, 27 Oct 2026 00:47:16 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc34195f6a708aadbef73da242a67ac87547613795b3fee170969379b265fcc`  
		Last Modified: Tue, 27 Oct 2026 00:47:19 GMT  
		Size: 72.3 MB (72258549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43cca7355ab45e8a9f1876ebc30044eed6f3844d85498102402c947fd3ec92a5`  
		Last Modified: Tue, 27 Oct 2026 00:47:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27b7908c4a5860e533a4fe751e629fe3e457cdb6bdbf9f7e9b4888816627e04b`  
		Last Modified: Tue, 27 Oct 2026 00:47:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:6276f9a8fe3dc31bbd09096f23df4b738538b4f8a0baee8c1ac57573e1bf576f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3804c99aec0ee6c35cae64668535e498b8253e6c8d0945b0a892ed82f6b933ea`

```dockerfile
```

-	Layers:
	-	`sha256:464ca3e7e8ffbb132cacb25c9bfd149dca20f6cf85f719838871f3f7489b4f7d`  
		Last Modified: Tue, 27 Oct 2026 00:47:16 GMT  
		Size: 7.4 MB (7445353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09dae15646ca1e395d5f97671938024d517d27a974a00b2c1329088e177de5e2`  
		Last Modified: Tue, 27 Oct 2026 00:47:15 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ac65c24cdbde88c38b1445d152719bb3d749d6da06f04bdb7341443baf38914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246204106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124e6687a7bae7551b6f91795d565a98121c949b5430538807d8881b30921658`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:51:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:51:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:51:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:51:01 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:55:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 09:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 09:55:36 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 09:55:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 09:55:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:55:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:56:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:56:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:56:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 09:56:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 09:56:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2764aa49be37d3934d851e7657fbfa8c5c1f6c88c2432b9e2d08519d852a28b9`  
		Last Modified: Wed, 21 Oct 2026 09:57:50 GMT  
		Size: 91.3 MB (91256225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc90b79b7cf8f646cb60704370621d4e6ce3d4b73b5ce8f4b44070cbabd069e0`  
		Last Modified: Wed, 21 Oct 2026 09:57:47 GMT  
		Size: 20.4 MB (20357273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1473b2828e734313a198c97ddc9d5bc4da1c6f0cafbd922a2ee680a6eb635127`  
		Last Modified: Wed, 21 Oct 2026 09:57:46 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbaa38d032d510bde24465d5ca1df238c9197c9a0270a9ef2c3f747d98ff1f6`  
		Last Modified: Wed, 21 Oct 2026 09:57:50 GMT  
		Size: 77.7 MB (77709539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7edcb0b81fddf2421007eac91feb3961b7a396f4c1526215e2628d56913eca0`  
		Last Modified: Wed, 21 Oct 2026 09:57:48 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fc5ea909c7f0ccb3a4f3f9addafc1062f1ff4fd65ae1c51f8a379395148c54`  
		Last Modified: Wed, 21 Oct 2026 09:57:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:a2f1934df3c82592a6906ea047a7d6e4c53c5bc19e67f87b9c2e8a52c54b22cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b129f701f535f08f86e25f5a24448d28dbbfb0881b11e9ddb23ebf3d0535b8af`

```dockerfile
```

-	Layers:
	-	`sha256:58972e239a5c953608fd12e9fef51c5193e832d24af051bea044d65e4e660802`  
		Last Modified: Wed, 21 Oct 2026 09:57:47 GMT  
		Size: 7.4 MB (7428907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b61c2ef1b92cd59611fc718997853e0e0f41d963ffb2a9890c7a5824a71e9ff`  
		Last Modified: Wed, 21 Oct 2026 09:57:46 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
