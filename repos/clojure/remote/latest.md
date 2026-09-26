## `clojure:latest`

```console
$ docker pull clojure@sha256:d32dcb46d7ca45858c6fcc54a39321a33a6feeb3e98aa87aa1b08ffbcdf8c1ff
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
$ docker pull clojure@sha256:852780fd47a1d42beade66c4f1af6773bd634ee460ebbc2ea13fed0fdba79093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237852691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714382a908190720a369ca1ffeb502cdc1d8f3818f6f9dffe58c1aa02572566b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:18:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:18:31 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:19:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:19:42 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:19:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:19:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:19:44 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:19:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:19:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:19:58 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:19:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437a87fa0d48ff4b04b93da71771111b3871dbee7d9acde357d2e18a2e44e12b`  
		Last Modified: Fri, 25 Sep 2026 23:20:22 GMT  
		Size: 92.6 MB (92618036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c9245ca05b762e312af61b46cfc66cc329fdef66f4c947690e417a1f1a98fb`  
		Last Modified: Fri, 25 Sep 2026 23:20:20 GMT  
		Size: 20.1 MB (20146626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e3e94494e1394b561a616f9ecd2a6e2d7910f221197519d297b7f81bb0b3f0`  
		Last Modified: Fri, 25 Sep 2026 23:20:19 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25fd483a40b5130e5437a10144d21d6b7495554909e022c31682cd105a0ad9f`  
		Last Modified: Fri, 25 Sep 2026 23:20:22 GMT  
		Size: 72.1 MB (72068300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5097acd94c4a63c3584ba4c4475225b99c661684d257a7c67bbbebb6232145`  
		Last Modified: Fri, 25 Sep 2026 23:20:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4817b96cf992a82cf6b6ab8bde6791608520fd0d95ba53f24b731818492729`  
		Last Modified: Fri, 25 Sep 2026 23:20:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:a6a8d975e0b6debaf3ae63f3ba2868d66630622279f665082aefdcd6acd59f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a5168c9d59d34eaf346da6b912a2f0e51bc7754d6064ff25f9492863f365d3`

```dockerfile
```

-	Layers:
	-	`sha256:41873660774cb0e0ae23e14196b71a84c75b6fbd0b2b3e3a3603bfd8190f9254`  
		Last Modified: Fri, 25 Sep 2026 23:20:19 GMT  
		Size: 7.4 MB (7441688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93594e3e57a2accafba9d3fee540469fe714ee030e63ab6f87d8d80135e63c2c`  
		Last Modified: Fri, 25 Sep 2026 23:20:18 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d5230a483e4c2d2da535c5ccd9adfd2071ea340cb73593931ffe60268b191e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236632533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b06d74b520e253d84a97eee5b38b03808c5bedb2749821d71ec218725b57c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:16:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:16:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:16:04 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:17:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:17:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:17:18 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:17:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:17:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:17:19 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:17:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:17:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:17:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:17:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:17:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc9aac341f80b92c4297c058055166e68ec70125eedc2593b16c57c41409d47`  
		Last Modified: Fri, 25 Sep 2026 23:17:57 GMT  
		Size: 91.5 MB (91528869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85874a5605710ac18984b3e8340c05f3860153764e3e1d1f42e29af38132d8c4`  
		Last Modified: Fri, 25 Sep 2026 23:17:54 GMT  
		Size: 20.0 MB (19967304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7309b67087c80965ae36398f627541561eadd97eb04866de8f6ffd0098c339dd`  
		Last Modified: Fri, 25 Sep 2026 23:17:53 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbe2f31a263aca0e797bc39757e82ffbe4e097e194f8ff9bcfcae64f7302988`  
		Last Modified: Fri, 25 Sep 2026 23:17:56 GMT  
		Size: 72.2 MB (72230196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14608eed59d8edc8de90f22b0e5c4ecef3f47d70636e9bef43bf7d96f2d43d6`  
		Last Modified: Fri, 25 Sep 2026 23:17:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757d831c41f600ea3a3cf146ec59cdc6c3f897810df4d48771d1389f60d73431`  
		Last Modified: Fri, 25 Sep 2026 23:17:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:e296be506cfade97f2d7c07e5fa1ddd718552e1d1c7236ca58b661a9770207a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1fcc5770151bc16e5ee4917f0247cdf6d5524a96241388094d175995b0a684`

```dockerfile
```

-	Layers:
	-	`sha256:574002ecaa70e9b3b226a743b306aad49ef2a4c01e3620b2a5ec2a59f8bfe424`  
		Last Modified: Fri, 25 Sep 2026 23:17:53 GMT  
		Size: 7.4 MB (7447424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29c181feb988456d44ebcb9dac36d32bdbbfbdfd77c7818ecca59c83fa063e8d`  
		Last Modified: Fri, 25 Sep 2026 23:17:53 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:236393f242c909825a12a4b3a55ba8824c60da1e9b36f3ca37dec46cc7de17cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246154012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b95212de8d7538247458d956f7805dbd2e8a3bba60b3198ed7f2a6dd12d4595`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:39:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:39:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:39:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 03:39:06 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:41:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 03:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 03:41:45 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 03:41:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 03:41:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:41:52 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:42:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:42:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:42:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 03:42:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 03:42:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04e914040a479971a3ed1caeca790017eb916416f5fcef351c9f764d805fc2`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 91.3 MB (91256264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae09b42099793a3143d008e2fd40ddbf3493455397fe3ac79ca5e3cfa9a6e6e4`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 20.4 MB (20358351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99d9376f75067724316363794bc1da03e8a75f4ced42d57442896eb0a7b6555`  
		Last Modified: Sat, 26 Sep 2026 03:43:11 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a65dba9ec36b460f43d3587b1a6e2fc9489667e5cd4a500f04a7babe6b9786`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 77.7 MB (77673780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321f31e1ea7811a48c2f938b21921acd154dda2a33006323d7a41a2293f973e8`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c8c3718f69cea3bbe3d8159da8470030767c9cd75767eccd1233389ece4c49`  
		Last Modified: Sat, 26 Sep 2026 03:43:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:41e9d595456dc1b6d0c764af8900ec86ebf20abaed50edba1e16366502797ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9f2d6b70b29f8a3f0d24575bf2c10752ef057b060ffd4b53084147452c2dd1`

```dockerfile
```

-	Layers:
	-	`sha256:1e6d58a2b783c14e8163bba099d3c4e760566a930cd73d7fb3156a8d9d2f3568`  
		Last Modified: Sat, 26 Sep 2026 03:43:12 GMT  
		Size: 7.4 MB (7430202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9192184f46d0edad3779746970c1ed20d64ee1286eaaa6e4ad238323ff4e92a8`  
		Last Modified: Sat, 26 Sep 2026 03:43:11 GMT  
		Size: 25.0 KB (25014 bytes)  
		MIME: application/vnd.in-toto+json
