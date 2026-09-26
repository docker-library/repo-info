## `clojure:latest`

```console
$ docker pull clojure@sha256:e6f27f87fb90791f7855928f58f4d2dbb6a34e07dbdba975a099044b2e2fc1ed
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
$ docker pull clojure@sha256:05fe071bca3cc126ed6727da15b0360e42a7ad5e1f1288678340dcba598803b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246143341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080884411fece36610794f6e33da57c1898085677af97b53a4b8a0818f70b8cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:33:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:33:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:33:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:33:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:33:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:33:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:36:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:36:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:36:09 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:36:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:36:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:36:18 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:37:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:37:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:37:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:37:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:37:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e144bdb34cfddeba81abf8a8bfde859fad0258615bc5463bba81aa5e20a8bf2b`  
		Last Modified: Sat, 19 Sep 2026 07:37:47 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3f6b6be2e6e19975369e5035bccc6a41d744c29a3630e972e812df25a6eb7`  
		Last Modified: Sat, 19 Sep 2026 07:37:44 GMT  
		Size: 20.3 MB (20348113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1c90a3d0c1b3a94f205326f7156915506c48ae241229146ea0ad65275ccead`  
		Last Modified: Sat, 19 Sep 2026 07:37:43 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6c82ec1655d3813d882e99a965760fc7d602f9f6c6985e0e3946556d324a9d`  
		Last Modified: Sat, 19 Sep 2026 07:37:46 GMT  
		Size: 77.7 MB (77673801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665a24bfaf78993e1843520f1faac63e82ba1688aaacc545266a877b68a62dbf`  
		Last Modified: Sat, 19 Sep 2026 07:37:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e598956e1d8dcf6ff572d4310873ed831890f57e2006c54137230c0a6736c50`  
		Last Modified: Sat, 19 Sep 2026 07:37:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:d0b6b94b9fdfdc0820012f18b9c3d2e3a3e84c5e09149ba8739cd74a14f832f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2980d8c0c0e452773d499e7ae639fe7073823195c8c5c7a3fe59bc6821c2d4ff`

```dockerfile
```

-	Layers:
	-	`sha256:94d251a2c5f35f72927eb3143512ebbc95916dd8fc898852178debb717d70762`  
		Last Modified: Sat, 19 Sep 2026 07:37:43 GMT  
		Size: 7.4 MB (7430194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7df9116cf3a3ca7f582d33089de08fb64f16bd69cb1d79822d811125d84bdf44`  
		Last Modified: Sat, 19 Sep 2026 07:37:42 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
